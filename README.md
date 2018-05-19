# 音频G711格式编解码

### 1、media文件夹存放的是audacity音频分析工具，与我们要解码的源G711文件；
### 2、src文件夹是源代码目录；
### 3、整个工程比较简单，用Clion打开CMakeLists.txt，然后重新编译即可。

说明：代码实例是G711—U模式，A模式的实例可参考下面代码。

```
/*
 *  Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. An additional intellectual property rights grant can be found
 *  in the file PATENTS.  All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 */
#include <string.h>
#include "g711.h"
#include "g711_interface.h"
#include "typedefs.h"

int16_t WebRtcG711_EncodeA(void* state,
                           int16_t* speechIn,
                           int16_t len,
                           int16_t* encoded) {
  int n;
  uint16_t tempVal, tempVal2;

  // Set and discard to avoid getting warnings
  (void)(state = NULL);

  // Sanity check of input length
  if (len < 0) {
    return (-1);
  }

  // Loop over all samples
  for (n = 0; n < len; n++) {
    tempVal = (uint16_t) linear_to_alaw(speechIn[n]);

#ifdef WEBRTC_ARCH_BIG_ENDIAN
    if ((n & 0x1) == 1) {
      encoded[n >> 1] |= ((uint16_t) tempVal);
    } else {
      encoded[n >> 1] = ((uint16_t) tempVal) << 8;
    }
#else
    if ((n & 0x1) == 1) {
      tempVal2 |= ((uint16_t) tempVal) << 8;
      encoded[n >> 1] |= ((uint16_t) tempVal) << 8;
    } else {
      tempVal2 = ((uint16_t) tempVal);
      encoded[n >> 1] = ((uint16_t) tempVal);
    }
#endif
  }
  return (len);
}

int16_t WebRtcG711_EncodeU(void* state,
                           int16_t* speechIn,
                           int16_t len,
                           int16_t* encoded) {
  int n;
  uint16_t tempVal;

  // Set and discard to avoid getting warnings
  (void)(state = NULL);

  // Sanity check of input length
  if (len < 0) {
    return (-1);
  }

  // Loop over all samples
  for (n = 0; n < len; n++) {
    tempVal = (uint16_t) linear_to_ulaw(speechIn[n]);

#ifdef WEBRTC_ARCH_BIG_ENDIAN
    if ((n & 0x1) == 1) {
      encoded[n >> 1] |= ((uint16_t) tempVal);
    } else {
      encoded[n >> 1] = ((uint16_t) tempVal) << 8;
    }
#else
    if ((n & 0x1) == 1) {
      encoded[n >> 1] |= ((uint16_t) tempVal) << 8;
    } else {
      encoded[n >> 1] = ((uint16_t) tempVal);
    }
#endif
  }
  return (len);
}

int16_t WebRtcG711_DecodeA(void* state,
                           int16_t* encoded,
                           int16_t len,
                           int16_t* decoded,
                           int16_t* speechType) {
  int n;
  uint16_t tempVal;

  // Set and discard to avoid getting warnings
  (void)(state = NULL);

  // Sanity check of input length
  if (len < 0) {
    return (-1);
  }

  for (n = 0; n < len; n++) {
#ifdef WEBRTC_ARCH_BIG_ENDIAN
    if ((n & 0x1) == 1) {
      tempVal = ((uint16_t) encoded[n >> 1] & 0xFF);
    } else {
      tempVal = ((uint16_t) encoded[n >> 1] >> 8);
    }
#else
    if ((n & 0x1) == 1) {
      tempVal = (encoded[n >> 1] >> 8);
    } else {
      tempVal = (encoded[n >> 1] & 0xFF);
    }
#endif
    decoded[n] = (int16_t) alaw_to_linear(tempVal);
  }

  *speechType = 1;
  return (len);
}

int16_t WebRtcG711_DecodeU(void* state,
                           int16_t* encoded,
                           int16_t len,
                           int16_t* decoded,
                           int16_t* speechType) {
  int n;
  uint16_t tempVal;

  // Set and discard to avoid getting warnings
  (void)(state = NULL);

  // Sanity check of input length
  if (len < 0) {
    return (-1);
  }

  for (n = 0; n < len; n++) {  //len是8位描述时的长度
#ifdef WEBRTC_ARCH_BIG_ENDIAN
    if ((n & 0x1) == 1) {
      tempVal = ((uint16_t) encoded[n >> 1] & 0xFF);
    } else {
      tempVal = ((uint16_t) encoded[n >> 1] >> 8);
    }
#else
    if ((n & 0x1) == 1) {
      tempVal = (encoded[n >> 1] >> 8); //奇数，取高8位
    } else {
      tempVal = (encoded[n >> 1] & 0xFF);//偶数，取当前8位
    }
#endif
    decoded[n] = (int16_t) ulaw_to_linear(tempVal);
  }

  *speechType = 1;
  return (len);
}

int WebRtcG711_DurationEst(void* state,
                           const uint8_t* payload,
                           int payload_length_bytes) {
  (void) state;
  (void) payload;
  /* G.711 is one byte per sample, so we can just return the number of bytes. */
  return payload_length_bytes;
}

int16_t WebRtcG711_Version(char* version, int16_t lenBytes) {
  strncpy(version, "2.0.0", lenBytes);
  return 0;
}


```
