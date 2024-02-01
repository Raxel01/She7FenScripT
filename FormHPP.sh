#/bin/bash
# /***Usage****/
    # ./Script ClassName Macro PATH

ClassName="$1"

HPP_HEADER="$2"

SendTo="$3"

echo "

#ifndef $HPP_HEADER
#define $HPP_HEADER

#include <iostream>
#include <iomanip>

class $ClassName
{

    public :
        $ClassName();
        $ClassName(const $ClassName &Obj);
        $ClassName& operator=(const $ClassName &Origine);
        ~$ClassName();
    
};

#endif
    " >> $SendTo
