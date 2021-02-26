# 1 "FDTD/wrapper.cpp"
# 1 "FDTD/wrapper.cpp" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 152 "<built-in>" 3
# 1 "<command line>" 1







# 1 "D:/Vivado/2019.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 157 "D:/Vivado/2019.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));

    void _ssdm_op_Return(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));

    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));

    void __xilinx_ip_top(...) __attribute__ ((nothrow));


}
# 9 "<command line>" 2
# 1 "<built-in>" 2
# 1 "FDTD/wrapper.cpp" 2
# 1 "FDTD/fdtd.h" 1



typedef float data_t;

data_t jacobi_stencil(data_t central,
  data_t n, data_t s, data_t w,
  data_t e, data_t coef_tij,
  data_t coef_ti, data_t coef_tj);

void Kernel64x64(data_t array_buffer[64][64],
    data_t bondary_n_buffer[64],
    data_t bondary_s_buffer[64],
    data_t bondary_w_buffer[64],
    data_t bondary_e_buffer[64],
    data_t coef_tij,
       data_t coef_ti,
    data_t coef_tj,
    int iter);
# 2 "FDTD/wrapper.cpp" 2


void wrapper(data_t initial_array[64][64],
  data_t bondary_n[64],
  data_t bondary_s[64],
  data_t bondary_w[64],
  data_t bondary_e[64],
  data_t coef_tij,
  data_t coef_ti,
  data_t coef_tj,
  int iter
  )
{_ssdm_SpecArrayDimSize(initial_array, 64);_ssdm_SpecArrayDimSize(bondary_n, 64);_ssdm_SpecArrayDimSize(bondary_s, 64);_ssdm_SpecArrayDimSize(bondary_w, 64);_ssdm_SpecArrayDimSize(bondary_e, 64);
#pragma HLS INTERFACE s_axilite port=&iter
#pragma HLS INTERFACE s_axilite port=&coef_tj
#pragma HLS INTERFACE s_axilite port=&coef_ti
#pragma HLS INTERFACE s_axilite port=&coef_tij
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi depth=512 port=&bondary_e offset=slave
#pragma HLS INTERFACE m_axi depth=512 port=&bondary_w offset=slave
#pragma HLS INTERFACE m_axi depth=512 port=&bondary_s offset=slave
#pragma HLS INTERFACE m_axi depth=512 port=&bondary_n offset=slave
#pragma HLS INTERFACE m_axi depth=16384 port=&initial_array offset=slave

 data_t array_buffer[64][64];
 data_t bondary_n_buffer[64];
 data_t bondary_s_buffer[64];
 data_t bondary_w_buffer[64];
 data_t bondary_e_buffer[64];


 for(int i=0; i<64; i++)
 {
  for(int j=0; j<64; j++)
  {
#pragma HLS pipeline
 array_buffer[i][j] = initial_array[i][j];
  }
 }

 for(int i=0; i<64; i++)
 {
#pragma HLS pipeline
 bondary_n_buffer[i] = bondary_n[i];
 }

 for(int i=0; i<64; i++)
 {
#pragma HLS pipeline
 bondary_s_buffer[i] = bondary_s[i];
 }

 for(int i=0; i<64; i++)
 {
#pragma HLS pipeline
 bondary_w_buffer[i] = bondary_w[i];
 }

 for(int i=0; i<64; i++)
 {
#pragma HLS pipeline
 bondary_e_buffer[i] = bondary_e[i];
 }


 Kernel64x64(array_buffer,
   bondary_n_buffer,
   bondary_s_buffer,
   bondary_w_buffer,
   bondary_e_buffer,
   coef_tij,
   coef_ti,
   coef_tj,
   iter);


 for(int i=0; i<64; i++)
 {
  for(int j=0; j<64; j++)
  {
#pragma HLS pipeline
 initial_array[i][j] = array_buffer[i][j] ;
  }
 }
}
