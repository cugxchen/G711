//
// Created by 909845 on 2018/5/19.
//

#include <iostream>
#include "string"
#include "../Codec/G711Decode.h"
#include "../Codec/G711Encode.h"

using namespace std;

int main(void)
{
    G711Decode g711Decode;
    g711Decode.Decode();


    G711Encode g711Encode;
    g711Encode.Encode();
}

