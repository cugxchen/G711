//
// Created by 909845 on 2018/5/19.
//

#ifndef G711CODEC_G711DECODE_H
#define G711CODEC_G711DECODE_H

#include <cstdio>
#include "../Public/Type.h"

using namespace std;

/*
 * G711 -U ģʽ������
 */
class G711Decode
{
public:
    G711Decode();
    virtual ~G711Decode();

public:
    void Decode();

private:
    /*
     * G711_U ���ģʽ��С��ģʽ���룬Ŀǰ�ɼ���ʹ�õ���G711  U/С��ģʽ
     */
    void BigEndianMode(Int16* pSrc, Int32 nSrc8BitLen, Int16 *pDes);
    void SmallEndianMode(Int16* pSrc, Int32 nSrc8BitLen, Int16 *pDes);

private:
    FILE *fpSrcFile = nullptr; //�������G711Դ�ļ�
    FILE *fpDesFile = nullptr; //������Ŀ���ļ�
};


#endif //G711CODEC_G711DECODE_H
