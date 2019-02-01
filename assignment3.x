
struct mergeIn{
    int mergeInput1<>;
    int mergeInput2<>;
};
struct mergeOut{
    int mergeOutput<>;
};


struct complexNum{
    int real;
    int imaginary;
};

struct addComplex{
    complexNum input1;
    complexNum input2;
};

struct dirList{
    string directory<>;
};

program RPC_PROG {
version RPC_VERS {
string FUNCTION_HOSTNAME(void) = 1; /* procedure number = 1 */
mergeOut FUNCTION_MERGESORT(mergeIn) = 2; /* procedure number = 2 */
string FUNCTION_ENCRYPTEDECHO(string) = 3; /* procedure number = 3 */
dirList FUNCTION_LISTFILES(string) = 4; /* procedure number = 4 */
complexNum FUNCTION_ADDCOMPLEX(addComplex) = 5; /* procedure number = 5 */
} = 1; /* version number = 1 */
} = 0x22347678; /* program number = 0x12345678 */
