//
// Created by 909845 on 2018/5/19.
//

#include "G711Encode.h"

static const Int32 LEN = 1 * 8000 / 100; //80


G711Encode::G711Encode()
{
    fpSrcFile = fopen("../media/des_mono_8000.pcm", "rb"); //解码得到的pcm文件
    fpDesFile = fopen("../media/des_mono_8000.g711", "wb");//对pcm文件编码为g711文件
}

G711Encode::~G711Encode()
{
    if (fpSrcFile != nullptr)
    {
        fclose(fpSrcFile);
        fpSrcFile = nullptr;
    }

    if (fpDesFile != nullptr)
    {
        fclose(fpDesFile);
        fpDesFile = nullptr;
    }
}

void G711Encode::Encode()
{
    assert(fpSrcFile != nullptr);
    assert(fpDesFile != nullptr);

    Int16 srcBuffer[LEN] = {0};
    Int8 desBuffer[LEN] = {0};

    while (fread(srcBuffer, sizeof(Int16), LEN, fpSrcFile) > 0)
    {
        SmallEndianMode((Int16*)srcBuffer, LEN, (Int16*)desBuffer);

        fwrite(desBuffer, sizeof(Int8), LEN, fpDesFile);
    }
    cout<<"G711 Encode complete."<<endl;
}

void G711Encode::BigEndianMode(Int16 *pSrc, Int32 nSrc16BitLen, Int16 *pDes)
{
    UInt16 tempVal = 0;
    for (int i = 0; i < nSrc16BitLen; ++i)
    {
        tempVal = (UInt16) linear_to_ulaw(pSrc[i]);
        if ((i & 0x1) == 1) {
            pDes[i >> 1] |= ((UInt16) tempVal);
        } else {
            pDes[i >> 1] = ((UInt16) tempVal) << 8;
        }
    }
}

void G711Encode::SmallEndianMode(Int16 *pSrc, Int32 nSrc16BitLen, Int16 *pDes)
{
    UInt16 tempVal = 0;
    for (int i = 0; i < nSrc16BitLen; ++i)
    {
        tempVal = (UInt16) linear_to_ulaw(pSrc[i]);
        if ((i & 0x1) == 1) {
            pDes[i >> 1] |= ((UInt16) tempVal) << 8;
        } else {
            pDes[i >> 1] = ((UInt16) tempVal);
        }
    }
}
