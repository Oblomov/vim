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
syn keyword openclStorageClass	__kernel kernel __attribute__ __kernel_exec
syn keyword openclKernelAttr	vec_type_hint work_group_size_hint reqd_work_group_size

" OpenCL address space qualifiers
syn keyword openclStorageClass	__global global __local local
syn keyword openclStorageClass	__private private __constant constant

syn keyword openclStorageClass  __read_only read_only __write_only write_only __read_write read_write

" OpenCL data types
syn keyword openclType		char2 char3 char4 char8 char16
syn keyword openclType		uchar uchar2 uchar3 uchar4 uchar8 uchar16
syn keyword openclType		short2 short3 short4 short8 short16
syn keyword openclType		ushort ushort2 ushort3 ushort4 ushort8 ushort16
syn keyword openclType		int2 int3 int4 int8 int16
syn keyword openclType		uint uint2 uint3 uint4 uint8 uint16
syn keyword openclType		long2 long3 long4 long8 long16
syn keyword openclType		ulong ulong2 ulong3 ulong4 long8 long16
syn keyword openclType		half2 half3 half4 half8 half16
syn keyword openclType		float2 float3 float4 float8 float16
syn keyword openclType		double2 double3 double4 double8 double16
syn keyword openclType		bool half
syn keyword openclType		image2d_t image3d_t sampler_t
syn keyword openclType		event_t

" OpenCL reserved data types
syn keyword openclReservedType	bool2 bool3 bool4 bool8 bool16
syn keyword openclReservedType	quad2 quad3 quad4 quad8 quad16
syn keyword openclReservedType	imaginary complex

" OpenCL predefined math constants
syn keyword openclNumConst	CHAR_BIT SCHAR_MAX SCHAR_MIN CHAR_MAX CHAR_MIN UCHAR_MAX
syn keyword openclNumConst	SHRT_MAX SHRT_MIN USHRT_MAX
syn keyword openclNumConst	INT_MAX INT_MIN UINT_MAX
syn keyword openclNumConst	LONG_MAX LONG_MIN ULONG_MAX
syn keyword openclNumConst	FLT_DIG FLT_MANT_DIG FLT_MAX_10_EXP FLT_MAX_EXP
syn keyword openclNumConst	FLT_MIN_10_EXP FLT_MIN_EXP FLT_RADIX
syn keyword openclNumConst	FLT_MAX FLT_MIN FLT_EPSILON
syn keyword openclNumConst	DBL_DIG DBL_MANT_DIG DBL_MAX_10_EXP DBL_MAX_EXP
syn keyword openclNumConst	DBL_MIN_10_EXP DBL_MIN_EXP DBL_RADIX
syn keyword openclNumConst	DBL_MAX DBL_MIN DBL_EPSILON
syn keyword openclNumConst	HALF_DIG HALF_MANT_DIG HALF_MAX_10_EXP HALF_MAX_EXP
syn keyword openclNumConst	HALF_MIN_10_EXP HALF_MIN_EXP HALF_RADIX
syn keyword openclNumConst	HALF_MAX HALF_MIN HALF_EPSILON

syn keyword openclNumConst	M_E M_LOG2E M_LOG10E M_LN2 M_LN10
syn keyword openclNumConst	M_PI M_PI_2 M_PI_4 M_1_PI M_2_PI
syn keyword openclNumConst	M_2_SQRTPI M_SQRT2 M_SQRT1_2

syn keyword openclNumConst	M_E_F M_LOG2E_F M_LOG10E_F M_LN2_F M_LN10_F
syn keyword openclNumConst	M_PI_F M_PI_2_F M_PI_4_F M_1_PI_F M_2_PI_F
syn keyword openclNumConst	M_2_SQRTPI_F M_SQRT2_F M_SQRT1_2_F

syn keyword openclNumConst	M_E_H M_LOG2E_H M_LOG10E_H M_LN2_H M_LN10_H
syn keyword openclNumConst	M_PI_H M_PI_2_H M_PI_4_H M_1_PI_H M_2_PI_H
syn keyword openclNumConst	M_2_SQRTPI_H M_SQRT2_H M_SQRT1_2_H

syn keyword openclNumConst	NAN HUGE_VALF HUGE_VAL MAXFLOAT INFINITY

" OpenCL image channel data type and order, addressing and filtering modes
syn keyword openclImgConst	CLK_SNORM_INT8 CLK_SNORM_INT16 CLK_UNORM_INT8 CLK_UNORM_INT16
syn keyword openclImgConst	CLK_UNORM_SHORT_565 CLK_UNORM_SHORT_555 CLK_UNORM_INT_101010
syn keyword openclImgConst	CLK_SIGNED_INT8 CLK_SIGNED_INT16 CLK_SIGNED_INT32
syn keyword openclImgConst	CLK_UNSIGNED_INT8 CLK_UNSIGNED_INT16 CLK_UNSIGNED_INT32
syn keyword openclImgConst	CLK_HALF_FLOAT CLK_FLOAT

syn keyword openclImgConst	CLK_A CLK_R CLK_Rx CLK_RA CLK_RG CLK_RGx
syn keyword openclImgConst	CLK_RGB CLK_RGBx CLK_ARGB CLK_BGRA CLK_RGBA
syn keyword openclImgConst	CLK_INTENSITY CLK_LUMINANCE

syn keyword openclImgConst	CLK_NORMALIZED_COORDS_TRUE CLK_NORMALIZED_COORDS_FALSE
syn keyword openclImgConst	CLK_ADDRESS_CLAMP_TO_EDGE CLK_ADDRESS_CLAMP CLK_ADDRESS_MIRRORED_REPEAT CLK_ADDRESS_NONE CLK_ADDRESS_REPEAT
syn keyword openclImgConst	CLK_FILTER_NEAREST CLK_FILTER_LINEAR

" Mem fence options, stick them with imag constants
syn keyword openclImgConst	CLK_LOCAL_MEM_FENCE CLK_GLOBAL_MEM_FENCE CLK_REGION_MEM_FENCE


" OpenCL preprocessor constants, often used in conditionals
syn keyword openclPreConst	__FILE__ __LINE__ __OPENCL_VERSION__ containedin=cPreCondit
syn keyword openclPreConst	CL_VERSION_1_0 CL_VERSION_1_1 CL_VERSION_1_2 containedin=cPreCondit
syn keyword openclPreConst	__ENDIAN_LITTLE__ __IMAGE_SUPPORT__ containedin=cPreCondit
syn keyword openclPreConst	__FAST_RELAXED_MATH__ __EMBEDDED_PROFILE__ containedin=cPreCondit

" Pragma constants, contained in #pragma invocation for extensions
syn keyword openclExtSwitch	enable disable containedin=cPreProc

syn keyword openclPreConst	OPENCL FP_CONTRACT EXTENSION ON OFF DEFAULT containedin=cPreProc
syn keyword openclPreConst	FP_FAST_FMA FP_FAST_FMAF FP_FAST_FMA_HALF containedin=cPreProc

syn keyword openclExtension	cl_khr_byte_addressable_store containedin=cPreCondit,cPreProc
syn keyword openclExtension	cl_khr_global_int32_base_atomics cl_khr_global_int32_extended_atomics containedin=cPreCondit,cPreProc
syn keyword openclExtension	cl_khr_local_int32_base_atomics cl_khr_local_int32_extended_atomics containedin=cPreCondit,cPreProc

syn keyword openclExtension	cl_khr_fp16 cl_khr_fp64 containedin=cPreCondit,cPreProc
syn keyword openclExtension	cl_khr_int64_base_atomics cl_khr_int64_extended_atomics containedin=cPreCondit,cPreProc
syn keyword openclExtension	cl_khr_3d_image_writes containedin=cPreCondit,cPreProc
syn keyword openclExtension	cl_khr_gl_sharing cl_apple_gl_sharing cl_khr_gl_event containedin=cPreCondit,cPreProc
syn keyword openclExtension	cl_khr_d3d10_sharing containedin=cPreCondit,cPreProc

" Built-ins
syn keyword openclBuiltin	abs abs_diff acos acosh acospi add_sat all any
" as_<type>
syn keyword openclBuiltin	asin asinh asinpi
syn keyword openclBuiltin	async_work_group_copy async_work_group_strided_copy
syn keyword openclBuiltin	atan atan2 atan2pi atanh atanpi
syn keyword openclBuiltin	atomic_add atomic_and atomic_cmpxchg atomic_dec atomic_inc
syn keyword openclBuiltin	atomic_max acomit_min atomic_or atomic_sub atomic_xchg atomic_xor

syn keyword openclBuiltin	barrier bitselect
syn keyword openclBuiltin	cbrt ceil clamp clz
" convert_type[_sat][_roundmode]
syn keyword openclBuiltin	copysign cos cosh cospi cross
syn keyword openclBuiltin	degrees distance dot
syn keyword openclBuiltin	erf erfc exp exp10 exp2 expm1

syn keyword openclBuiltin	fabs
syn keyword openclBuiltin	fast_distance fast_length fast_normalize
syn keyword openclBuiltin	fdim floor fma fmax fmin fmod fract frexp

syn keyword openclBuiltin	get_global_id get_global_size get_global_offset get_group_id
syn keyword openclBuiltin	get_image_channel_data_type get_image_channel_order get_image_depth
syn keyword openclBuiltin	get_image_dim get_image_height get_image_width
syn keyword openclBuiltin	get_local_id get_local_size get_num_groups get_work_dim

syn keyword openclBuiltin	hadd
syn keyword openclBuiltin	half_cos half_divide half_exp half_exp2 half_exp10 half_log half_log10 half_log2
syn keyword openclBuiltin	half_powr half_recip half_rsqrt half_sin half_sqrt half_tan
syn keyword openclBuiltin	hypot

syn keyword openclBuiltin	ilogb isequal isfinite isgreater isgreaterequal
syn keyword openclBuiltin	isinf isless islessequal islessgreater
syn keyword openclBuiltin	isnan isnormal isnotequal isordered isunordered

syn keyword openclBuiltin	ldexp length lgamma lgamma_r
syn keyword openclBuiltin	log log10 log1p log2 logb

syn keyword openclBuiltin	mad mad_hi mad_sat mad24 max maxmag minmag
syn keyword openclBuiltin	mem_fence
syn keyword openclBuiltin	min mix modf mul_hi mul24

syn keyword openclBuiltin	nan
syn keyword openclBuiltin	native_cos native_divide native_exp native_exp2 native_exp10
syn keyword openclBuiltin	native_log native_log2 native_log10 native_powr native_recip
syn keyword openclBuiltin	native_rsqrt native_sin native_sqrt native_tan
syn keyword openclBuiltin	nextafter normalize

syn keyword openclBuiltin	pow pown powr prefetch

syn keyword openclBuiltin	radians
syn keyword openclBuiltin	read_imagef read_imageh read_imagei read_imageui
syn keyword openclBuiltin	read_mem_fence
syn keyword openclBuiltin	remainder remquo rhadd rint
syn keyword openclBuiltin	rootn rotate round rsqrt

syn keyword openclBuiltin	select shuffle shuffle2 sign signbit
syn keyword openclBuiltin	sin sincos sinh sinpi sqrt
syn keyword openclBuiltin	step smoothstep sub_sat

syn keyword openclBuiltin	tan tanh tanpi tgamma trunc

syn keyword openclBuiltin	upsample

syn keyword openclBuiltin	vec_step
" vload[_half][n]
" vloada_half[n][_roundmode]
" vstore[_half][n]
" vstorea_half[n][_roundmode]

syn keyword openclBuiltin	wait_group_events
syn keyword openclBuiltin	write_imagef write_imageh write_imagei write_imageui
syn keyword openclBuiltin	write_mem_fence


" OpenCL vector component addressing
syn match   openclComponent	display contained "\.[xyzw]\+"
syn match   openclComponent	display contained "\.s[0-9a-fA-f]\+"
syn match   openclComponent	display contained "\.\(lo\|hi\|odd\|even\)"

hi def link openclStorageClass	StorageClass
hi def link openclKernelAttr	PreProc
hi def link openclType		Type
hi def link openclReservedType	Error
hi def link openclVariable	Identifier

hi def link openclNumConst	Constant
hi def link openclImgConst	Constant
hi def link openclPreConst	Constant

hi def link openclExtension	Type
hi def link openclExtSwitch	Identifier

hi def link openclComponent	SpecialChar

hi def link openclBuiltin	Function

let b:current_syntax = "opencl"

" vim: ts=8
