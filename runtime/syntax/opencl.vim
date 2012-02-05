" Vim syntax file
" Language:	OpenCL
" Maintainer:	Giuseppe Bilotta <giuseppe.bilotta@gmail.com>
" Last Change:	2012 Feb 05

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  source <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
endif

" OpenCL kernels
syn keyword OpenCLStorageClass	__kernel kernel __attribute__ __kernel_exec
syn keyword OpenCLKernelAttr	vec_type_hint work_group_size_hint reqd_work_group_size

" OpenCL address space qualifiers
syn keyword OpenCLStorageClass	__global global __local local
syn keyword OpenCLStorageClass	__private private __constant constant

syn keyword OpenCLStorageClass  __read_only read_only __write_only write_only __read_write read_write

" OpenCL data types
syn keyword OpenCLType		char2 char3 char4 char8 char16
syn keyword OpenCLType		uchar uchar2 uchar3 uchar4 uchar8 uchar16
syn keyword OpenCLType		short2 short3 short4 short8 short16
syn keyword OpenCLType		ushort ushort2 ushort3 ushort4 ushort8 ushort16
syn keyword OpenCLType		int2 int3 int4 int8 int16
syn keyword OpenCLType		uint uint2 uint3 uint4 uint8 uint16
syn keyword OpenCLType		long2 long3 long4 long8 long16
syn keyword OpenCLType		ulong ulong2 ulong3 ulong4 long8 long16
syn keyword OpenCLType		half2 half3 half4 half8 half16
syn keyword OpenCLType		float2 float3 float4 float8 float16
syn keyword OpenCLType		double2 double3 double4 double8 double16
syn keyword OpenCLType		bool half
syn keyword OpenCLType		image2d_t image3d_t sampler_t
syn keyword OpenCLType		event_t

" OpenCL reserved data types
syn keyword OpenCLReservedType	bool2 bool3 bool4 bool8 bool16
syn keyword OpenCLReservedType	quad2 quad3 quad4 quad8 quad16
syn keyword OpenCLReservedType	imaginary complex

" OpenCL predefined math constants
syn keyword OpenCLNumConst	CL_CHAR_BIT CL_SCHAR_MAX CL_SCHAR_MIN CL_CHAR_MAX CL_CHAR_MIN CL_UCHAR_MAX
syn keyword OpenCLNumConst	CL_SHRT_MAX CL_SHRT_MIN CL_USHRT_MAX
syn keyword OpenCLNumConst	CL_INT_MAX CL_INT_MIN CL_UINT_MAX
syn keyword OpenCLNumConst	CL_LONG_MAX CL_LONG_MIN CL_ULONG_MAX
syn keyword OpenCLNumConst	CL_FLT_DIG CL_FLT_MANT_DIG CL_FLT_MAX_10_EXP CL_FLT_MAX_EXP
syn keyword OpenCLNumConst	CL_FLT_MIN_10_EXP CL_FLT_MIN_EXP CL_FLT_RADIX
syn keyword OpenCLNumConst	CL_FLT_MAX CL_FLT_MIN CL_FLT_EPSILON
syn keyword OpenCLNumConst	CL_DBL_DIG CL_DBL_MANT_DIG CL_DBL_MAX_10_EXP CL_DBL_MAX_EXP
syn keyword OpenCLNumConst	CL_DBL_MIN_10_EXP CL_DBL_MIN_EXP CL_DBL_RADIX
syn keyword OpenCLNumConst	CL_DBL_MAX CL_DBL_MIN CL_DBL_EPSILON
syn keyword OpenCLNumConst	CL_M_E CL_M_LOG2E CL_M_LOG10E CL_M_LN2 CL_M_LN10
syn keyword OpenCLNumConst	CL_M_PI CL_M_PI_2 CL_M_PI_4 CL_M_1_PI CL_M_2_PI
syn keyword OpenCLNumConst	CL_M_2_SQRTPI CL_M_SQRT2 CL_M_SQRT1_2

syn keyword OpenCLNumConst	CL_M_E_F CL_M_LOG2E_F CL_M_LOG10E_F CL_M_LN2_F CL_M_LN10_F
syn keyword OpenCLNumConst	CL_M_PI_F CL_M_PI_2_F CL_M_PI_4_F CL_M_1_PI_F CL_M_2_PI_F
syn keyword OpenCLNumConst	CL_M_2_SQRTPI_F CL_M_SQRT2_F CL_M_SQRT1_2_F

syn keyword OpenCLNumConst	CL_NAN CL_HUGE_VALF CL_HUGE_VAL CL_MAXFLOAT CL_INFINITY

" OpenCL image channel data type and order, addressing and filtering modes
syn keyword OpenCLImgConst	CLK_SNORM_INT8 CLK_SNORM_INT16 CLK_UNORM_INT8 CLK_UNORM_INT16
syn keyword OpenCLImgConst	CLK_UNORM_SHORT_565 CLK_UNORM_SHORT_555 CLK_UNORM_SHORT_101010
syn keyword OpenCLImgConst	CLK_SIGNED_INT8 CLK_SIGNED_INT16 CLK_SIGNED_INT32
syn keyword OpenCLImgConst	CLK_UNSIGNED_INT8 CLK_UNSIGNED_INT16 CLK_UNSIGNED_INT32
syn keyword OpenCLImgConst	CLK_HALF_FLOAT CLK_FLOAT

syn keyword OpenCLImgConst	CLK_A CLK_R CLK_Rx CLK_RG CLK_RGx CLK_RA
syn keyword OpenCLImgConst	CLK_RGB CLK_RGBx CLK_RGBA CLK_ARGB CLK_BGRA
syn keyword OpenCLImgConst	CLK_INTENSITY CLK_LUMINANCE

syn keyword OpenCLImgConst	CLK_ADDRESS_CLAMP_TO_EDGE CLK_ADDRESS_CLAMP CLK_ADDRESS_NONE
syn keyword OpenCLImgConst	CLK_FILTER_NEAREST CLK_FILTER_LINEAR

" Mem fence options, stick them with imag constants
syn keyword OpenCLImgConst	CLK_LOCAL_MEM_FENCE CLK_GLOBAL_MEM_FENCE


" OpenCL preprocessor constants, often used in conditionals
syn keyword OpenCLPreConst	OPENCL FP_CONTRACT EXTENSION ON OFF DEFAULT containedin=cPreCondit
syn keyword OpenCLPreConst	FP_FAST_FMA FP_FAST_FMAF containedin=cPreCondit
syn keyword OpenCLPreConst	__FILE__ __LINE__ __OPENCL_VERSION__ containedin=cPreCondit
syn keyword OpenCLPreConst	CL_VERSION_1_0 CL_VERSION_1_1 CL_VERSION_1_2 containedin=cPreCondit
syn keyword OpenCLPreConst	__ENDIAN_LITTLE__ __IMAGE_SUPPORT__ containedin=cPreCondit
syn keyword OpenCLPreConst	__FAST_RELAXED_MATH__ __EMBEDDED_PROFILE__ containedin=cPreCondit

" Pragma constants, contained in #pragma invocation for extensions
syn keyword OpenCLExtSwitch	enable disable containedin=cPreProc

syn keyword OpenCLExtension	cl_khr_byte_addressable_store containedin=cPreCondit,cPreProc
syn keyword OpenCLExtension	cl_khr_global_int32_base_atomics cl_khr_global_int32_extended_atomics containedin=cPreCondit,cPreProc
syn keyword OpenCLExtension	cl_khr_local_int32_base_atomics cl_khr_local_int32_extended_atomics containedin=cPreCondit,cPreProc

syn keyword OpenCLExtension	cl_khr_fp16 cl_khr_fp64 containedin=cPreCondit,cPreProc
syn keyword OpenCLExtension	cl_khr_int64_base_atomics cl_khr_int64_extended_atomics containedin=cPreCondit,cPreProc
syn keyword OpenCLExtension	cl_khr_3d_image_writes containedin=cPreCondit,cPreProc
syn keyword OpenCLExtension	cl_khr_gl_sharing cl_apple_gl_sharing cl_khr_gl_event containedin=cPreCondit,cPreProc
syn keyword OpenCLExtension	cl_khr_d3d10_sharing containedin=cPreCondit,cPreProc

" Built-ins
syn keyword OpenCLBuiltin	abs abs_diff acos acosh acospi add_sat all any
" as_<type>
syn keyword OpenCLBuiltin	asin asinh asinpi
syn keyword OpenCLBuiltin	async_work_group_copy async_work_group_strided_copy
syn keyword OpenCLBuiltin	atan atan2 atan2pi atanh atanpi
syn keyword OpenCLBuiltin	atomic_add atomic_and atomic_cmpxchg atomic_dec atomic_inc
syn keyword OpenCLBuiltin	atomic_max acomit_min atomic_or atomic_sub atomic_xchg atomic_xor

syn keyword OpenCLBuiltin	barrier bitselect
syn keyword OpenCLBuiltin	cbrt ceil clamp clz
" convert_type[_sat][_roundmode]
syn keyword OpenCLBuiltin	copysign cos cosh cospi cross
syn keyword OpenCLBuiltin	degrees distance dot
syn keyword OpenCLBuiltin	erf erfc exp exp10 exp2 expm1

syn keyword OpenCLBuiltin	fabs
syn keyword OpenCLBuiltin	fast_distance fast_length fast_normalize
syn keyword OpenCLBuiltin	fdim floor fma fmax fmin fmod fract frexp

syn keyword OpenCLBuiltin	get_global_id get_global_size get_global_offset get_group_id
syn keyword OpenCLBuiltin	get_image_channel_data_type get_image_channel_order get_image_depth
syn keyword OpenCLBuiltin	get_image_dim get_image_height get_image_width
syn keyword OpenCLBuiltin	get_local_id get_local_size get_num_groups get_work_dim

syn keyword OpenCLBuiltin	hadd
syn keyword OpenCLBuiltin	half_cos half_divide half_exp half_exp2 half_exp10 half_log half_log10 half_log2
syn keyword OpenCLBuiltin	half_powr half_recip half_rsqrt half_sin half_sqrt half_tan
syn keyword OpenCLBuiltin	hypot

syn keyword OpenCLBuiltin	ilogb isequal isfinite isgreater isgreaterequal
syn keyword OpenCLBuiltin	isinf isless islessequal islessgreater
syn keyword OpenCLBuiltin	isnan isnormal isnotequal isordered isunordered

syn keyword OpenCLBuiltin	ldexp length lgamma lgamma_r
syn keyword OpenCLBuiltin	log log10 log1p log2 logb

syn keyword OpenCLBuiltin	mad mad_hi mad_sat mad24 max maxmag minmag
syn keyword OpenCLBuiltin	mem_fence
syn keyword OpenCLBuiltin	min mix modf mul_hi mul24

syn keyword OpenCLBuiltin	nan
syn keyword OpenCLBuiltin	native_cos native_divide native_exp native_exp2 native_exp10
syn keyword OpenCLBuiltin	native_log native_log2 native_log10 native_powr native_recip
syn keyword OpenCLBuiltin	native_rsqrt native_sin native_sqrt native_tan
syn keyword OpenCLBuiltin	nextafter normalize

syn keyword OpenCLBuiltin	pow pown powr prefetch

syn keyword OpenCLBuiltin	radians
syn keyword OpenCLBuiltin	read_imagef read_imageh read_imageui
syn keyword OpenCLBuiltin	read_mem_fence
syn keyword OpenCLBuiltin	remainder remquo rhadd rint
syn keyword OpenCLBuiltin	rootn rotate round rsqrt

syn keyword OpenCLBuiltin	select shuffle shuffle2 sign signbit
syn keyword OpenCLBuiltin	sin sincos sinh sinpi sqrt
syn keyword OpenCLBuiltin	step smoothstep sub_sat

syn keyword OpenCLBuiltin	tan tanh tanpi tgamma trunc

syn keyword OpenCLBuiltin	upsample

syn keyword OpenCLBuiltin	vec_step
" vload[_half][n]
" vloada_half[n][_roundmode]
" vstore[_half][n]
" vstorea_half[n][_roundmode]

syn keyword OpenCLBuiltin	wait_group_events
syn keyword OpenCLBuiltin	write_imagef write_imageh write_imagei write_imageui
syn keyword OpenCLBuiltin	write_mem_fence


" OpenCL vector component addressing
syn match   OpenCLComponent	display contained "\.[xyzw]\+"
syn match   OpenCLComponent	display contained "\.s[0-9a-fA-f]\+"
syn match   OpenCLComponent	display contained "\.\(lo\|hi\|odd\|even\)"

hi def link OpenCLStorageClass	StorageClass
hi def link OpenCLKernelAttr	PreProc
hi def link OpenCLType		Type
hi def link OpenCLReservedType	Error
hi def link OpenCLVariable	Identifier

hi def link OpenCLNumConst	Constant
hi def link OpenCLImgConst	Constant
hi def link OpenCLPreConst	Constant

hi def link OpenCLExtension	Type
hi def link OpenCLExtSwitch	Identifier

hi def link OpenCLComponent	SpecialChar

hi def link OpenCLBuiltin	Function

let b:current_syntax = "opencl"

" vim: ts=8
