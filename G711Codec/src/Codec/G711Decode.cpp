//
// Created by 909845 on 2018/5/19.
//

#include <assert.h>
#include <iostream>
#include "G711Decode.h"
#include "G711/g711.h"

static const Int32 LEN = 1 * 8000 / 100; //80

/*
 * G711���룬�ǽ�8bit���ݻ�ԭ14bit����13λ(Int16�洢)
 */
G711Decode::G711Decode()
{
    fpSrcFile = fopen("../media/src_mono_8000.G711", "rb"); //�ṩ��Դ�ļ�Ϊ������8000�����ʣ�Դ�ļ�ΪG711_UС��ģʽ
    fpDesFile = fopen("../media/des_mono_8000.pcm", "wb");//����Ŀ���ļ�Ϊ������8000������
}

G711Decode::~G711Decode()
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

void G711Decode::Decode()
{
    assert(fpSrcFile != nullptr);
    assert(fpDesFile != nullptr);

    Int8 srcBuffer[LEN] = {0};
    Int16 desBuffer[LEN] = {0};

    while (fread(srcBuffer, sizeof(Int8), LEN, fpSrcFile) > 0)
    {
        SmallEndianMode((Int16*)srcBuffer, LEN, desBuffer);
        fwrite(desBuffer, sizeof(Int16), LEN, fpDesFile);
    }
    cout<<"G711 Decode complete."<<endl;
}

void G711Decode::BigEndianMode(Int16 *pSrc, Int32 nSrc8BitLen, Int16 *pDes)
{
    UInt16 tempVal = 0;
    for (int n = 0; n < nSrc8BitLen; ++n)
    {
        if ((n & 0x1) == 1)
        {
            tempVal = ((UInt16) pSrc[n >> 1] & 0xFF);
        }
        else
        {
            tempVal = ((UInt16) pSrc[n >> 1] >> 8);
        }
        pDes[n] = (Int16) ulaw_to_linear(tempVal);
    }
}

void G711Decode::SmallEndianMode(Int16 *pSrc, Int32 nSrc8BitLen, Int16 *pDes)
{
    UInt16 tempVal = 0;
    for (int n = 0; n < nSrc8BitLen; ++n)
    {
        if ((n & 0x1) == 1)
        {
            tempVal = (pSrc[n >> 1] >> 8);//������ȡ��8λ
        }
        else
        {
            tempVal = (pSrc[n >> 1] & 0xFF);//ż����ȡ��8λ
        }
        pDes[n] = (Int16) ulaw_to_linear(tempVal);
    }
}
