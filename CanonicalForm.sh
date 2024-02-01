#!/bin/bash
 
echo -e "

 ██████╗ █████╗ ███╗   ██╗ ██████╗ ███╗   ██╗██╗ ██████╗ █████╗ ██╗     ███████╗ ██████╗ ██████╗ ███╗   ███╗
██╔════╝██╔══██╗████╗  ██║██╔═══██╗████╗  ██║██║██╔════╝██╔══██╗██║     ██╔════╝██╔═══██╗██╔══██╗████╗ ████║
██║     ███████║██╔██╗ ██║██║   ██║██╔██╗ ██║██║██║     ███████║██║     █████╗  ██║   ██║██████╔╝██╔████╔██║
██║     ██╔══██║██║╚██╗██║██║   ██║██║╚██╗██║██║██║     ██╔══██║██║     ██╔══╝  ██║   ██║██╔══██╗██║╚██╔╝██║
╚██████╗██║  ██║██║ ╚████║╚██████╔╝██║ ╚████║██║╚██████╗██║  ██║███████╗██║     ╚██████╔╝██║  ██║██║ ╚═╝ ██║
 ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═ 
        /********************** ********************* ****USAGE : *********************** ************** */
        #                                                                                                 */
        #   ./CanonicalForm.sh ClassName OUTFILE(your.cpp file) attributes1 attributes2 attributes3 ...   */
        #                                                                                                 */
        /**********************  *************************************************************************/ 
" 
echo -e "\n \t\t\t\t\t By: \033[33mCanis_Lupus\033[0m [abait-ta]\n "

if [ $# -gt 2 ] ; then

echo " 7enna ra KHdaamiiiiiin "
sleep 1
echo " 7enna ra KHdaamiiiiiin "
sleep 1
echo " Saytara  Te7t  L2omor  "
sleep 1
echo " Waiting   B7al   Exam  "
sleep 1
echo " -^Maderthach B WHILE^- "

# Logically ClassName
ClassName="$1"

# Write to this File
FilePath="$2"

# Array Of attributes
declare -a attributes

TotalOfargs=$#
startAffect=3
startIndex=0

# echo $startAffect $startIndex $TotalOfargs
#Fill my array with arguments
while [ $startAffect -le $TotalOfargs ]; do
    attributes[$startIndex]="${!startAffect}"
    startIndex=$(($startIndex + 1))
    startAffect=$(($startAffect + 1))
done

arrayLength=${#attributes[@]}
# echo $arrayLength
# ==========================≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠=≠≠≠≠≠=≠=≠≠Start Script=============≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠============#
echo "
#include \"$ClassName.hpp\"

$ClassName::$ClassName()
{
    std::cout << \"#\" << std::setw(46) << \"$ClassName Default Constructor Called \" << std::setw(9) << \"---]\" << std::endl;
}

$ClassName::$ClassName(const $ClassName &Obj)
{
    std::cout << \"#\" << std::setw(43) << \"$ClassName Copy Constructor Called \"<< std::setw(12) << \"---]\" << std::endl;
    *this = Obj;
}

$ClassName::~$ClassName()
{
    std::cout << \"#\" << std::setw(40) << \"$ClassName  Destructor  Called  \" <<  std::setw(15) << \"---]\" << std::endl;
}" > $FilePath

echo -n "
 $ClassName & $ClassName::operator=(const $ClassName &Origine)
 {
     std::cout << \"#\" << std::setw(51) << \"$ClassName Copy assignment Operator Called \"<< std::setw(4) << \"---]\" << std::endl;
     if (this != &Origine)
     {
    " >> $FilePath

        i=0
        while [ $i -lt $arrayLength ]; do
        if [ $((i + 1)) -eq $arrayLength ]; then
            echo -n "        this->"${attributes[$i]} "= Origine.${attributes[$i]};" >> $FilePath
        else
            echo "    this->"${attributes[$i]} "= Origine.${attributes[$i]};" >> $FilePath
        fi
            i=$((i + 1)) 
        done
echo "
     }
     return (*this);
 }
" >> $FilePath

echo -e "\t\t\t \033[33mCanonical Form Created Succesfully Go check  Your $FilePath File \033[0m\n"

else
    echo -e  " Errorr Usage recheck Syntaxe : 
        /********************** ********************* ****USAGE : *********************** ********* */
        #                                                                                          */
        #   \033[33m ./CanonicalForm.sh ClassName OUTFILE attributes1 attributes2 ... \033[0m      */
        #            OUTFILE     : (Your .cpp File)                                              */
        #            Attributesn : (Your class members)                                         */
        /**********************  ************************************************************  */ "
fi