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
 * G711 -U 模式，编码
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
     * G711_U 大端模式与小端模式编码，目前采集端使用的是G711-U/小端模式
     */
    void BigEndianMode(Int16* pSrc, Int32 nSrc16BitLen, Int16 *pDes);
    void SmallEndianMode(Int16* pSrc, Int32 nSrc16BitLen, Int16 *pDes);

private:
    FILE *fpSrcFile = nullptr; //待编码的的PCM源文件
    FILE *fpDesFile = nullptr; //编码后的目标文件
};


#endif //G711CODEC_G711ENCODE_H
