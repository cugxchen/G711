//
// Created by 909845 on 2018/5/19.
//

#ifndef G711CODEC_G711DECODE_H
#define G711CODEC_G711DECODE_H

#include <cstdio>
#include "../Public/Type.h"

using namespace std;

/*
 * G711 -U 模式，解码
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
     * G711_U 大端模式与小端模式解码，目前采集端使用的是G711  U/小端模式
     */
    void BigEndianMode(Int16* pSrc, Int32 nSrc8BitLen, Int16 *pDes);
    void SmallEndianMode(Int16* pSrc, Int32 nSrc8BitLen, Int16 *pDes);

private:
    FILE *fpSrcFile = nullptr; //待解码的G711源文件
    FILE *fpDesFile = nullptr; //解码后的目标文件
};


#endif //G711CODEC_G711DECODE_H
