#include "kernel.h"

//std::string infilename = "../datfiles/TriggerRecord00001_0000TPCAPA001.dat";

int main(int argc, char **argv)
{
    // Check if the correct number of arguments is provided
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <input_filename> \n";
        return 1;  // Terminate the program
    }

    std::string inputFilename = argv[1];

    // Open input file
    std::ifstream inputFile(inputFilename);
    if (!inputFile) {
        std::cout << "Error opening input file.\n";
        return 1;  // Terminate the program
    }

    dune::FDHDChannelMapSP chanmap;
    chanmap.ReadMapFromFiles("FDHDChannelMap_v1_wireends.txt","FDHD_CrateMap_v1.txt");
    FILE *infile = fopen(inputFilename.data(),"r");

    std::vector<char> infiledata;

    while (1)
    {
        char c=fgetc(infile);
        if (feof(infile)) break;
        infiledata.push_back(c);
    }
    fclose(infile);

    std::vector<int> outdata;
    
    process_data(infiledata, chanmap, outdata);

    return 0;
}