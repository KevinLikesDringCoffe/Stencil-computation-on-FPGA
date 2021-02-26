# 1 "FDTD/kernel64x64.cpp"
# 1 "FDTD/kernel64x64.cpp" 1
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
# 1 "FDTD/kernel64x64.cpp" 2
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
# 2 "FDTD/kernel64x64.cpp" 2


void Kernel64x64(data_t array_buffer[64][64],
    data_t bondary_n_buffer[64],
    data_t bondary_s_buffer[64],
    data_t bondary_w_buffer[64],
    data_t bondary_e_buffer[64],
    data_t coef_tij,
    data_t coef_ti,
    data_t coef_tj,
    int iter)
{_ssdm_SpecArrayDimSize(array_buffer, 64);_ssdm_SpecArrayDimSize(bondary_n_buffer, 64);_ssdm_SpecArrayDimSize(bondary_s_buffer, 64);_ssdm_SpecArrayDimSize(bondary_w_buffer, 64);_ssdm_SpecArrayDimSize(bondary_e_buffer, 64);
#pragma HLS ARRAY_PARTITION variable=&bondary_e_buffer cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=&bondary_w_buffer cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=&bondary_n_buffer cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=&bondary_s_buffer cyclic factor=2 dim=1

#pragma HLS ARRAY_PARTITION variable=&array_buffer cyclic factor=2 dim=2
#pragma HLS ARRAY_PARTITION variable=&array_buffer cyclic factor=2 dim=1

 data_t array_buffer_tmp[64][64];
#pragma HLS ARRAY_PARTITION variable=&array_buffer_tmp cyclic factor=2 dim=2
#pragma HLS ARRAY_PARTITION variable=&array_buffer_tmp cyclic factor=2 dim=1


 for(int it=0; it<iter; it++)
 {
#pragma HLS LOOP_TRIPCOUNT max=1000
 for(int tile_i=0; tile_i<64; tile_i+=2)
  {
   for(int tile_j=0; tile_j<64; tile_j+=2)
   {
#pragma HLS PIPELINE
 for(int i=0; i<2; i++)
    {
     for(int j=0; j<2; j++)
     {
      int row = tile_i + i;
      int col = tile_j + j;
      if(col == 0 && row == 0)
      {
       array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
            bondary_n_buffer[col], array_buffer[row+1][col],
            bondary_w_buffer[row], array_buffer[row][col+1],
            coef_tij, coef_ti, coef_tj);
      }
      else if(col == 0 && row == 64 -1)
      {
       array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
            array_buffer[row-1][col], bondary_s_buffer[col],
            bondary_w_buffer[row], array_buffer[row][col+1], coef_tij, coef_ti, coef_tj);
      }
      else if(col == 64 -1 && row == 0)
      {
       array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
            bondary_n_buffer[col], array_buffer[row+1][col],
            array_buffer[row][col-1], bondary_e_buffer[row],
            coef_tij, coef_ti, coef_tj);
      }
      else if(col == 64 -1 && row == 64 - 1)
      {
       array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
            array_buffer[row-1][col], bondary_s_buffer[col],
            array_buffer[row][col-1], bondary_e_buffer[row],
            coef_tij, coef_ti, coef_tj);
      }
      else if(col == 0)
      {
       array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
            array_buffer[row-1][col], array_buffer[row+1][col],
            bondary_w_buffer[row], array_buffer[row][col+1],
            coef_tij, coef_ti, coef_tj);
      }
      else if(col == 64 -1)
      {
       array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
            array_buffer[row-1][col], array_buffer[row+1][col],
            array_buffer[row][col-1], bondary_e_buffer[row],
            coef_tij, coef_ti, coef_tj);
      }
      else if(row == 0)
      {
       array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
            bondary_n_buffer[col], array_buffer[row+1][col],
            array_buffer[row][col-1], array_buffer[row][col+1],
            coef_tij, coef_ti, coef_tj);
      }
      else if(row == 64 -1)
      {
       array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
            array_buffer[row-1][col],bondary_s_buffer[col],
            array_buffer[row][col-1], array_buffer[row][col+1],
            coef_tij, coef_ti, coef_tj);

      }
      else
      {
       array_buffer_tmp[row][col] = jacobi_stencil(array_buffer[row][col],
            array_buffer[row-1][col], array_buffer[row+1][col],
            array_buffer[row][col-1], array_buffer[row][col+1],
            coef_tij, coef_ti, coef_tj);
      }
     }
    }
   }
  }

  for(int i=0; i<64; i++)
  {
#pragma HLS UNROLL factor=2
 for(int j=0; j<64; j++)
   {
#pragma HLS UNROLL factor=2
 array_buffer[i][j] = array_buffer_tmp[i][j];
   }
  }
 }
}
