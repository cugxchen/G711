//
// Created by 909845 on 2018/5/19.
//

#ifndef G711CODEC_G711ENCODE_H
#define G711CODEC_G711ENCODE_H

#include <assert.h>
#include <iostream>
#include "G711Decode.h"
#include "G711/g711.h"


using namespace std;
/*
 * G711 -U ģʽ������
 */
class G711Encode
{
public:
    G711Encode();
    virtual ~G711Encode();

public:
    void Encode();

private:
    /*
     * G711_U ���ģʽ��С��ģʽ���룬Ŀǰ�ɼ���ʹ�õ���G711-U/С��ģʽ
     */
    void BigEndianMode(Int16* pSrc, Int32 nSrc16BitLen, Int16 *pDes);
    void SmallEndianMode(Int16* pSrc, Int32 nSrc16BitLen, Int16 *pDes);

private:
    FILE *fpSrcFile = nullptr; //������ĵ�PCMԴ�ļ�
    FILE *fpDesFile = nullptr; //������Ŀ���ļ�
};


#endif //G711CODEC_G711ENCODE_H
