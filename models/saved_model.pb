??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
?
sequential_1/Hidden1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namesequential_1/Hidden1/kernel
?
/sequential_1/Hidden1/kernel/Read/ReadVariableOpReadVariableOpsequential_1/Hidden1/kernel*
_output_shapes
:	?*
dtype0
?
sequential_1/Hidden1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namesequential_1/Hidden1/bias
?
-sequential_1/Hidden1/bias/Read/ReadVariableOpReadVariableOpsequential_1/Hidden1/bias*
_output_shapes
:*
dtype0
?
sequential_1/Hidden2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namesequential_1/Hidden2/kernel
?
/sequential_1/Hidden2/kernel/Read/ReadVariableOpReadVariableOpsequential_1/Hidden2/kernel*
_output_shapes

:*
dtype0
?
sequential_1/Hidden2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namesequential_1/Hidden2/bias
?
-sequential_1/Hidden2/bias/Read/ReadVariableOpReadVariableOpsequential_1/Hidden2/bias*
_output_shapes
:*
dtype0
?
sequential_1/Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_namesequential_1/Output/kernel
?
.sequential_1/Output/kernel/Read/ReadVariableOpReadVariableOpsequential_1/Output/kernel*
_output_shapes

:*
dtype0
?
sequential_1/Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namesequential_1/Output/bias
?
,sequential_1/Output/bias/Read/ReadVariableOpReadVariableOpsequential_1/Output/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name164*
value_dtype0	
m
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name200*
value_dtype0	
m
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name238*
value_dtype0	
m
hash_table_3HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name276*
value_dtype0	
m
hash_table_4HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name314*
value_dtype0	
m
hash_table_5HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name352*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
"Adam/sequential_1/Hidden1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/sequential_1/Hidden1/kernel/m
?
6Adam/sequential_1/Hidden1/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/Hidden1/kernel/m*
_output_shapes
:	?*
dtype0
?
 Adam/sequential_1/Hidden1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/Hidden1/bias/m
?
4Adam/sequential_1/Hidden1/bias/m/Read/ReadVariableOpReadVariableOp Adam/sequential_1/Hidden1/bias/m*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/Hidden2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/sequential_1/Hidden2/kernel/m
?
6Adam/sequential_1/Hidden2/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/Hidden2/kernel/m*
_output_shapes

:*
dtype0
?
 Adam/sequential_1/Hidden2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/Hidden2/bias/m
?
4Adam/sequential_1/Hidden2/bias/m/Read/ReadVariableOpReadVariableOp Adam/sequential_1/Hidden2/bias/m*
_output_shapes
:*
dtype0
?
!Adam/sequential_1/Output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!Adam/sequential_1/Output/kernel/m
?
5Adam/sequential_1/Output/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/sequential_1/Output/kernel/m*
_output_shapes

:*
dtype0
?
Adam/sequential_1/Output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/sequential_1/Output/bias/m
?
3Adam/sequential_1/Output/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential_1/Output/bias/m*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/Hidden1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/sequential_1/Hidden1/kernel/v
?
6Adam/sequential_1/Hidden1/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/Hidden1/kernel/v*
_output_shapes
:	?*
dtype0
?
 Adam/sequential_1/Hidden1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/Hidden1/bias/v
?
4Adam/sequential_1/Hidden1/bias/v/Read/ReadVariableOpReadVariableOp Adam/sequential_1/Hidden1/bias/v*
_output_shapes
:*
dtype0
?
"Adam/sequential_1/Hidden2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/sequential_1/Hidden2/kernel/v
?
6Adam/sequential_1/Hidden2/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/sequential_1/Hidden2/kernel/v*
_output_shapes

:*
dtype0
?
 Adam/sequential_1/Hidden2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_1/Hidden2/bias/v
?
4Adam/sequential_1/Hidden2/bias/v/Read/ReadVariableOpReadVariableOp Adam/sequential_1/Hidden2/bias/v*
_output_shapes
:*
dtype0
?
!Adam/sequential_1/Output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!Adam/sequential_1/Output/kernel/v
?
5Adam/sequential_1/Output/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/sequential_1/Output/kernel/v*
_output_shapes

:*
dtype0
?
Adam/sequential_1/Output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/sequential_1/Output/bias/v
?
3Adam/sequential_1/Output/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential_1/Output/bias/v*
_output_shapes
:*
dtype0
P
ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_3Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_4Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_5Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?	
Const_6Const*
_output_shapes
:'*
dtype0*?
value?B?'BWater, sparklingBWater, import, sparklingBPlain croissant, parbakingBSemi-hard coarse-pored cheeseBAvocadoBMangoBWater, stillBSemi-hard layered cheeseB)Small flavored bread roll, own productionB!Ciabatta, light, plain, parbakingB Plain rye-wheat bread, parbakingBOrangeBPomegranateBBananaBLemonBYoghurtsB4Grain bread roll baked in the hearth, own productionBSoft cheese, white moldBSweet bun, own productionB8Flavored wheat bread baked in the hearth, own productionBKiwiBLimeBWater, slightly sparklingBPlain long loaf, own productionBMandarinB2Small fancy bread with berry stuff, own productionBMilk dessertsB
GrapefruitB4Plain bread roll baked in the hearth, own productionB-Plain wheat bread, toast-type, own productionB
Milk cakesB.Fancy strudel with poppy stuff, own productionBSemi-hard bulk cheeseB9Rye-wheat grain bread baked in the hearth, own productionB4Wheat bran bread baked in the hearth, own productionB7Plain baguette loaf baked in the hearth, own productionB Plain fancy cake, own productionB#Plain baguette loaf, own productionB:Flavored baguette loaf baked in the hearth, own production
?
Const_7Const*
_output_shapes
:'*
dtype0	*?
value?B?	'"?                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       
?
Const_8Const*
_output_shapes
:*
dtype0*L
valueCBABMineral waterBBakeryBCheeseBTropical fruitsBYogurts
x
Const_9Const*
_output_shapes
:*
dtype0	*=
value4B2	"(                                    
?
Const_10Const*
_output_shapes
:<*
dtype0	*?
value?B?	<"??     ?'     ??     ??	     ?~      7?      ??     z?     ab     ?      ??
     ߬     "             ?     ?~      8?     &      ??     ?	     ?K     h<     ?     ??     ?
     ?     83     )?      ?W     	A      	     q     ??     ?Q      Ѿ	     ?Y	     w?     e<     ?     ??      ??	     {w     lo     ?k     ?[     ??     ?)
     Rf      *?      ??     ??
     ?       ??     ??     %      ??     X     N>     fo     ??     
?
Const_11Const*
_output_shapes
:<*
dtype0	*?
value?B?	<"?                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       
i
Const_12Const*
_output_shapes
:*
dtype0	*-
value$B"	"                      
i
Const_13Const*
_output_shapes
:*
dtype0	*-
value$B"	"                      
?
Const_14Const*
_output_shapes
:*
dtype0	*M
valueDBB	"8                                    !       %       
?
Const_15Const*
_output_shapes
:*
dtype0	*M
valueDBB	"8                                                  
?
Const_16Const*
_output_shapes	
:?*
dtype0	*?
value?B?	?"?      ?      6	      o      ?
      I      i      ?      ?      ?      V            ?      ?	      ?      ?      ?            G      F      ?      ?      ?      ?      ?	      ?	      ?
            ?
      ?      ?
      ?            D      ?	      ?      K      ?      ?      ?      ?      q
      ?      *      E      ?      l      T      ?      {      ?      ?      ?             ?      O            f      ?      ?      ?
      ?
      ?            ?
      9      ?
            ?            H      ?      ?      ?      ?      ?      
      ?      ?      ?      
      w
      ?	      \      ?            o	      ?      ?      ?      ?	      L	      ?      ?      m      ?                  	      g	      ?      ?      q      ?      ?      ?      C      ?      ?
      ?      ?      ?      ?      ?
      ?      ?            ?      ?      ?      B                        ?	      ?      ?      f	      ?      ?      
            ?      ?      O	      ?      	      ?      ?      @      ?      ,      ?      ?      ?      ?      	      N      	      ?      ?      ?      ;      ?      ?      X
      p	      :      e      M
      ?      ?      ?      ?      ?      ?            ?      N	      %      ?      ?      p      ?
      ?      ?      `      J      R      ?      ?      ?      ?      ?      ?      ?      ?      b      ?      d      ?      S                  ?      ?      ?      ?      Q      ?      ?
            ?      U      ?      ?      +      ?      ?      ?      8
            ?      e	      
      ?      ?      _      ?      ?
      K
      e      ?      A      &      ?      ?      ?      n      ]
      ?      ?      ?      ?      ?      h      ?      z      g      ?            ?      ?      ?      ?      ?      ?      <      ?      ?      
      ?      ?      ?            ?      J
      D      ?      ?	      ?      ?      ?      ?      L      ?      K      ?      M      ?      f      ?      c      ?      ?
      ?      -      ?      '      ?      k      ?      .      x
      (      }      ?      a      ?            P      Z	      j      %      ?      ?	      ?	      $      ?      (	      ?	      `      6
      ?
      )      ?
      ?      ?            f
      ?	      ?       ?      ;      ?      ?
      	      ?      ?      	      J	      e      ?      s
      W      ?      	      5      L      5
      ?      #      t      ?
      ~      X      ?      C      u       ?      %      ?
      ?      ?      v	      ?      R      6      ?      b      ?      ?      ?      S      ?      ?      ?      ?
      ?      [      \       ?       Q      ?      e      $      y
      X      ?      ?      ?             ?      z      	      I      	      Y
      ?      7	      ?	      k      d      K	      i            3            	      ?      ?      ?      >            [      ?	      \      /      ?      ?      ?
      p       ?      +      ?      ?      U      C      ?      ?      ?      c      ?      6      ?      I      a
      ?       <	      F      ^      ?      d            ?      ]      ?       ?      |      J                   ?       V      ?      \      ?      ?      D      T      ?      q       X	      j      g      
?
Const_17Const*
_output_shapes	
:?*
dtype0	*?
value?B?	?"?                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_6Const_7*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_258312
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_8Const_9*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_258320
?
StatefulPartitionedCall_2StatefulPartitionedCallhash_table_2Const_10Const_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_258328
?
StatefulPartitionedCall_3StatefulPartitionedCallhash_table_3Const_12Const_13*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_258336
?
StatefulPartitionedCall_4StatefulPartitionedCallhash_table_4Const_14Const_15*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_258344
?
StatefulPartitionedCall_5StatefulPartitionedCallhash_table_5Const_16Const_17*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_258352
?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2^StatefulPartitionedCall_3^StatefulPartitionedCall_4^StatefulPartitionedCall_5
?9
Const_18Const"/device:CPU:0*
_output_shapes
: *
dtype0*?9
value?9B?9 B?9
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
_build_input_shape
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
?
/iter

0beta_1

1beta_2
	2decay
3learning_ratem}m~m m?'m?(m?v?v?v? v?'v?(v?*
* 
.
0
1
2
 3
'4
(5*
.
0
1
2
 3
'4
(5*
* 
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

9serving_default* 
* 
U
:Category
	;Group
<SKU

=cityId
>countryOfOrigin
?
geoCluster* 
* 
* 
* 
?
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
ke
VARIABLE_VALUEsequential_1/Hidden1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEsequential_1/Hidden1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUEsequential_1/Hidden2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEsequential_1/Hidden2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 
?
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
jd
VARIABLE_VALUEsequential_1/Output/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEsequential_1/Output/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

T0
U1*
* 
* 
* 

VCategory_lookup* 

WGroup_lookup* 

X
SKU_lookup* 

YcityId_lookup* 

ZcountryOfOrigin_lookup* 

[geoCluster_lookup* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	\total
	]count
^	variables
_	keras_api*
H
	`total
	acount
b
_fn_kwargs
c	variables
d	keras_api*
R
e_initializer
f_create_resource
g_initialize
h_destroy_resource* 
R
i_initializer
j_create_resource
k_initialize
l_destroy_resource* 
R
m_initializer
n_create_resource
o_initialize
p_destroy_resource* 
R
q_initializer
r_create_resource
s_initialize
t_destroy_resource* 
R
u_initializer
v_create_resource
w_initialize
x_destroy_resource* 
R
y_initializer
z_create_resource
{_initialize
|_destroy_resource* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

\0
]1*

^	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

`0
a1*

c	variables*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
??
VARIABLE_VALUE"Adam/sequential_1/Hidden1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/Hidden1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/Hidden2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/Hidden2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/sequential_1/Output/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential_1/Output/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/Hidden1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/Hidden1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/sequential_1/Hidden2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/sequential_1/Hidden2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/sequential_1/Output/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential_1/Output/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
s
serving_default_CategoryPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
p
serving_default_GroupPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
n
serving_default_SKUPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
q
serving_default_cityIdPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
z
serving_default_countryOfOriginPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
o
serving_default_datePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
u
serving_default_geoClusterPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
p
serving_default_pricePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_6StatefulPartitionedCallserving_default_Categoryserving_default_Groupserving_default_SKUserving_default_cityIdserving_default_countryOfOriginserving_default_dateserving_default_geoClusterserving_default_price
hash_tableConsthash_table_1Const_1hash_table_2Const_2hash_table_3Const_3hash_table_4Const_4hash_table_5Const_5sequential_1/Hidden1/kernelsequential_1/Hidden1/biassequential_1/Hidden2/kernelsequential_1/Hidden2/biassequential_1/Output/kernelsequential_1/Output/bias*%
Tin
2										*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_257699
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_7StatefulPartitionedCallsaver_filename/sequential_1/Hidden1/kernel/Read/ReadVariableOp-sequential_1/Hidden1/bias/Read/ReadVariableOp/sequential_1/Hidden2/kernel/Read/ReadVariableOp-sequential_1/Hidden2/bias/Read/ReadVariableOp.sequential_1/Output/kernel/Read/ReadVariableOp,sequential_1/Output/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp6Adam/sequential_1/Hidden1/kernel/m/Read/ReadVariableOp4Adam/sequential_1/Hidden1/bias/m/Read/ReadVariableOp6Adam/sequential_1/Hidden2/kernel/m/Read/ReadVariableOp4Adam/sequential_1/Hidden2/bias/m/Read/ReadVariableOp5Adam/sequential_1/Output/kernel/m/Read/ReadVariableOp3Adam/sequential_1/Output/bias/m/Read/ReadVariableOp6Adam/sequential_1/Hidden1/kernel/v/Read/ReadVariableOp4Adam/sequential_1/Hidden1/bias/v/Read/ReadVariableOp6Adam/sequential_1/Hidden2/kernel/v/Read/ReadVariableOp4Adam/sequential_1/Hidden2/bias/v/Read/ReadVariableOp5Adam/sequential_1/Output/kernel/v/Read/ReadVariableOp3Adam/sequential_1/Output/bias/v/Read/ReadVariableOpConst_18*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_258493
?
StatefulPartitionedCall_8StatefulPartitionedCallsaver_filenamesequential_1/Hidden1/kernelsequential_1/Hidden1/biassequential_1/Hidden2/kernelsequential_1/Hidden2/biassequential_1/Output/kernelsequential_1/Output/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1"Adam/sequential_1/Hidden1/kernel/m Adam/sequential_1/Hidden1/bias/m"Adam/sequential_1/Hidden2/kernel/m Adam/sequential_1/Hidden2/bias/m!Adam/sequential_1/Output/kernel/mAdam/sequential_1/Output/bias/m"Adam/sequential_1/Hidden1/kernel/v Adam/sequential_1/Hidden1/bias/v"Adam/sequential_1/Hidden2/kernel/v Adam/sequential_1/Hidden2/bias/v!Adam/sequential_1/Output/kernel/vAdam/sequential_1/Output/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_258584??
?"
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_257141
category	
group
sku	

cityid	
countryoforigin	
date

geocluster		
price
dense_features_257100
dense_features_257102	
dense_features_257104
dense_features_257106	
dense_features_257108
dense_features_257110	
dense_features_257112
dense_features_257114	
dense_features_257116
dense_features_257118	
dense_features_257120
dense_features_257122	!
hidden1_257125:	?
hidden1_257127: 
hidden2_257130:
hidden2_257132:
output_257135:
output_257137:
identity??Hidden1/StatefulPartitionedCall?Hidden2/StatefulPartitionedCall?Output/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallcategorygroupskucityidcountryoforigindate
geoclusterpricedense_features_257100dense_features_257102dense_features_257104dense_features_257106dense_features_257108dense_features_257110dense_features_257112dense_features_257114dense_features_257116dense_features_257118dense_features_257120dense_features_257122*
Tin
2										*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_256817?
Hidden1/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0hidden1_257125hidden1_257127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Hidden1_layer_call_and_return_conditional_losses_256479?
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_257130hidden2_257132*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Hidden2_layer_call_and_return_conditional_losses_256496?
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0output_257135output_257137*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_256512v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall^Output/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
Category:JF
#
_output_shapes
:?????????

_user_specified_nameGroup:HD
#
_output_shapes
:?????????

_user_specified_nameSKU:KG
#
_output_shapes
:?????????
 
_user_specified_namecityId:TP
#
_output_shapes
:?????????
)
_user_specified_namecountryOfOrigin:IE
#
_output_shapes
:?????????

_user_specified_namedate:OK
#
_output_shapes
:?????????
$
_user_specified_name
geoCluster:JF
#
_output_shapes
:?????????

_user_specified_nameprice:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_1_layer_call_fn_257195
inputs_category
inputs_group

inputs_sku	
inputs_cityid	
inputs_countryoforigin	
inputs_date
inputs_geocluster	
inputs_price
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11:	?

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_categoryinputs_group
inputs_skuinputs_cityidinputs_countryoforigininputs_dateinputs_geoclusterinputs_priceunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*%
Tin
2										*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_256519o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Category:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/Group:OK
#
_output_shapes
:?????????
$
_user_specified_name
inputs/SKU:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/cityId:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/countryOfOrigin:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/date:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/geoCluster:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/price:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
__inference__traced_save_258493
file_prefix:
6savev2_sequential_1_hidden1_kernel_read_readvariableop8
4savev2_sequential_1_hidden1_bias_read_readvariableop:
6savev2_sequential_1_hidden2_kernel_read_readvariableop8
4savev2_sequential_1_hidden2_bias_read_readvariableop9
5savev2_sequential_1_output_kernel_read_readvariableop7
3savev2_sequential_1_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopA
=savev2_adam_sequential_1_hidden1_kernel_m_read_readvariableop?
;savev2_adam_sequential_1_hidden1_bias_m_read_readvariableopA
=savev2_adam_sequential_1_hidden2_kernel_m_read_readvariableop?
;savev2_adam_sequential_1_hidden2_bias_m_read_readvariableop@
<savev2_adam_sequential_1_output_kernel_m_read_readvariableop>
:savev2_adam_sequential_1_output_bias_m_read_readvariableopA
=savev2_adam_sequential_1_hidden1_kernel_v_read_readvariableop?
;savev2_adam_sequential_1_hidden1_bias_v_read_readvariableopA
=savev2_adam_sequential_1_hidden2_kernel_v_read_readvariableop?
;savev2_adam_sequential_1_hidden2_bias_v_read_readvariableop@
<savev2_adam_sequential_1_output_kernel_v_read_readvariableop>
:savev2_adam_sequential_1_output_bias_v_read_readvariableop
savev2_const_18

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_sequential_1_hidden1_kernel_read_readvariableop4savev2_sequential_1_hidden1_bias_read_readvariableop6savev2_sequential_1_hidden2_kernel_read_readvariableop4savev2_sequential_1_hidden2_bias_read_readvariableop5savev2_sequential_1_output_kernel_read_readvariableop3savev2_sequential_1_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop=savev2_adam_sequential_1_hidden1_kernel_m_read_readvariableop;savev2_adam_sequential_1_hidden1_bias_m_read_readvariableop=savev2_adam_sequential_1_hidden2_kernel_m_read_readvariableop;savev2_adam_sequential_1_hidden2_bias_m_read_readvariableop<savev2_adam_sequential_1_output_kernel_m_read_readvariableop:savev2_adam_sequential_1_output_bias_m_read_readvariableop=savev2_adam_sequential_1_hidden1_kernel_v_read_readvariableop;savev2_adam_sequential_1_hidden1_bias_v_read_readvariableop=savev2_adam_sequential_1_hidden2_kernel_v_read_readvariableop;savev2_adam_sequential_1_hidden2_bias_v_read_readvariableop<savev2_adam_sequential_1_output_kernel_v_read_readvariableop:savev2_adam_sequential_1_output_bias_v_read_readvariableopsavev2_const_18"/device:CPU:0*
_output_shapes
 **
dtypes 
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:::::: : : : : : : : : :	?::::::	?:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?
?
__inference_<lambda>_2583122
.table_init163_lookuptableimportv2_table_handle*
&table_init163_lookuptableimportv2_keys,
(table_init163_lookuptableimportv2_values	
identity??!table_init163/LookupTableImportV2?
!table_init163/LookupTableImportV2LookupTableImportV2.table_init163_lookuptableimportv2_table_handle&table_init163_lookuptableimportv2_keys(table_init163_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init163/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :':'2F
!table_init163/LookupTableImportV2!table_init163/LookupTableImportV2: 

_output_shapes
:': 

_output_shapes
:'
?

?
C__inference_Hidden2_layer_call_and_return_conditional_losses_256496

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
-
__inference__destroyer_258286
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
C__inference_Hidden2_layer_call_and_return_conditional_losses_258177

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_258137
features_category
features_group
features_sku	
features_cityid	
features_countryoforigin	
features_date
features_geocluster	
features_priceG
Ccategory_indicator_hash_table_lookup_lookuptablefindv2_table_handleH
Dcategory_indicator_hash_table_lookup_lookuptablefindv2_default_value	D
@group_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Agroup_indicator_hash_table_lookup_lookuptablefindv2_default_value	B
>sku_indicator_hash_table_lookup_lookuptablefindv2_table_handleC
?sku_indicator_hash_table_lookup_lookuptablefindv2_default_value	E
Acityid_indicator_hash_table_lookup_lookuptablefindv2_table_handleF
Bcityid_indicator_hash_table_lookup_lookuptablefindv2_default_value	N
Jcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handleO
Kcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value	I
Egeocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handleJ
Fgeocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value	
identity??6Category_indicator/hash_table_Lookup/LookupTableFindV2?3Group_indicator/hash_table_Lookup/LookupTableFindV2?1SKU_indicator/hash_table_Lookup/LookupTableFindV2?4cityId_indicator/hash_table_Lookup/LookupTableFindV2?=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2?8geoCluster_indicator/hash_table_Lookup/LookupTableFindV2l
!Category_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Category_indicator/ExpandDims
ExpandDimsfeatures_category*Category_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
1Category_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
+Category_indicator/to_sparse_input/NotEqualNotEqual&Category_indicator/ExpandDims:output:0:Category_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
*Category_indicator/to_sparse_input/indicesWhere/Category_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
)Category_indicator/to_sparse_input/valuesGatherNd&Category_indicator/ExpandDims:output:02Category_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
.Category_indicator/to_sparse_input/dense_shapeShape&Category_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
6Category_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ccategory_indicator_hash_table_lookup_lookuptablefindv2_table_handle2Category_indicator/to_sparse_input/values:output:0Dcategory_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????y
.Category_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
 Category_indicator/SparseToDenseSparseToDense2Category_indicator/to_sparse_input/indices:index:07Category_indicator/to_sparse_input/dense_shape:output:0?Category_indicator/hash_table_Lookup/LookupTableFindV2:values:07Category_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????e
 Category_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??g
"Category_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    b
 Category_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :'?
Category_indicator/one_hotOneHot(Category_indicator/SparseToDense:dense:0)Category_indicator/one_hot/depth:output:0)Category_indicator/one_hot/Const:output:0+Category_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????'{
(Category_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Category_indicator/SumSum#Category_indicator/one_hot:output:01Category_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????'g
Category_indicator/ShapeShapeCategory_indicator/Sum:output:0*
T0*
_output_shapes
:p
&Category_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(Category_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(Category_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 Category_indicator/strided_sliceStridedSlice!Category_indicator/Shape:output:0/Category_indicator/strided_slice/stack:output:01Category_indicator/strided_slice/stack_1:output:01Category_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"Category_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :'?
 Category_indicator/Reshape/shapePack)Category_indicator/strided_slice:output:0+Category_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Category_indicator/ReshapeReshapeCategory_indicator/Sum:output:0)Category_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????'i
Group_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Group_indicator/ExpandDims
ExpandDimsfeatures_group'Group_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.Group_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(Group_indicator/to_sparse_input/NotEqualNotEqual#Group_indicator/ExpandDims:output:07Group_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'Group_indicator/to_sparse_input/indicesWhere,Group_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&Group_indicator/to_sparse_input/valuesGatherNd#Group_indicator/ExpandDims:output:0/Group_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+Group_indicator/to_sparse_input/dense_shapeShape#Group_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3Group_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@group_indicator_hash_table_lookup_lookuptablefindv2_table_handle/Group_indicator/to_sparse_input/values:output:0Agroup_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+Group_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Group_indicator/SparseToDenseSparseToDense/Group_indicator/to_sparse_input/indices:index:04Group_indicator/to_sparse_input/dense_shape:output:0<Group_indicator/hash_table_Lookup/LookupTableFindV2:values:04Group_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
Group_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
Group_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Group_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Group_indicator/one_hotOneHot%Group_indicator/SparseToDense:dense:0&Group_indicator/one_hot/depth:output:0&Group_indicator/one_hot/Const:output:0(Group_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????x
%Group_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Group_indicator/SumSum Group_indicator/one_hot:output:0.Group_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????a
Group_indicator/ShapeShapeGroup_indicator/Sum:output:0*
T0*
_output_shapes
:m
#Group_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Group_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Group_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Group_indicator/strided_sliceStridedSliceGroup_indicator/Shape:output:0,Group_indicator/strided_slice/stack:output:0.Group_indicator/strided_slice/stack_1:output:0.Group_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Group_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Group_indicator/Reshape/shapePack&Group_indicator/strided_slice:output:0(Group_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Group_indicator/ReshapeReshapeGroup_indicator/Sum:output:0&Group_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
SKU_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
SKU_indicator/ExpandDims
ExpandDimsfeatures_sku%SKU_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????w
,SKU_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*SKU_indicator/to_sparse_input/ignore_valueCast5SKU_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
&SKU_indicator/to_sparse_input/NotEqualNotEqual!SKU_indicator/ExpandDims:output:0.SKU_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
%SKU_indicator/to_sparse_input/indicesWhere*SKU_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
$SKU_indicator/to_sparse_input/valuesGatherNd!SKU_indicator/ExpandDims:output:0-SKU_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
)SKU_indicator/to_sparse_input/dense_shapeShape!SKU_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
1SKU_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2>sku_indicator_hash_table_lookup_lookuptablefindv2_table_handle-SKU_indicator/to_sparse_input/values:output:0?sku_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????t
)SKU_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
SKU_indicator/SparseToDenseSparseToDense-SKU_indicator/to_sparse_input/indices:index:02SKU_indicator/to_sparse_input/dense_shape:output:0:SKU_indicator/hash_table_Lookup/LookupTableFindV2:values:02SKU_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????`
SKU_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??b
SKU_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ]
SKU_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :<?
SKU_indicator/one_hotOneHot#SKU_indicator/SparseToDense:dense:0$SKU_indicator/one_hot/depth:output:0$SKU_indicator/one_hot/Const:output:0&SKU_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????<v
#SKU_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
SKU_indicator/SumSumSKU_indicator/one_hot:output:0,SKU_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????<]
SKU_indicator/ShapeShapeSKU_indicator/Sum:output:0*
T0*
_output_shapes
:k
!SKU_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#SKU_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#SKU_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
SKU_indicator/strided_sliceStridedSliceSKU_indicator/Shape:output:0*SKU_indicator/strided_slice/stack:output:0,SKU_indicator/strided_slice/stack_1:output:0,SKU_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
SKU_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :<?
SKU_indicator/Reshape/shapePack$SKU_indicator/strided_slice:output:0&SKU_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
SKU_indicator/ReshapeReshapeSKU_indicator/Sum:output:0$SKU_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????<j
cityId_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
cityId_indicator/ExpandDims
ExpandDimsfeatures_cityid(cityId_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????z
/cityId_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-cityId_indicator/to_sparse_input/ignore_valueCast8cityId_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
)cityId_indicator/to_sparse_input/NotEqualNotEqual$cityId_indicator/ExpandDims:output:01cityId_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
(cityId_indicator/to_sparse_input/indicesWhere-cityId_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'cityId_indicator/to_sparse_input/valuesGatherNd$cityId_indicator/ExpandDims:output:00cityId_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
,cityId_indicator/to_sparse_input/dense_shapeShape$cityId_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
4cityId_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Acityid_indicator_hash_table_lookup_lookuptablefindv2_table_handle0cityId_indicator/to_sparse_input/values:output:0Bcityid_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????w
,cityId_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
cityId_indicator/SparseToDenseSparseToDense0cityId_indicator/to_sparse_input/indices:index:05cityId_indicator/to_sparse_input/dense_shape:output:0=cityId_indicator/hash_table_Lookup/LookupTableFindV2:values:05cityId_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
cityId_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 cityId_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
cityId_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
cityId_indicator/one_hotOneHot&cityId_indicator/SparseToDense:dense:0'cityId_indicator/one_hot/depth:output:0'cityId_indicator/one_hot/Const:output:0)cityId_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&cityId_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
cityId_indicator/SumSum!cityId_indicator/one_hot:output:0/cityId_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
cityId_indicator/ShapeShapecityId_indicator/Sum:output:0*
T0*
_output_shapes
:n
$cityId_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&cityId_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&cityId_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
cityId_indicator/strided_sliceStridedSlicecityId_indicator/Shape:output:0-cityId_indicator/strided_slice/stack:output:0/cityId_indicator/strided_slice/stack_1:output:0/cityId_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 cityId_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
cityId_indicator/Reshape/shapePack'cityId_indicator/strided_slice:output:0)cityId_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
cityId_indicator/ReshapeReshapecityId_indicator/Sum:output:0'cityId_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(countryOfOrigin_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$countryOfOrigin_indicator/ExpandDims
ExpandDimsfeatures_countryoforigin1countryOfOrigin_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
8countryOfOrigin_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6countryOfOrigin_indicator/to_sparse_input/ignore_valueCastAcountryOfOrigin_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
2countryOfOrigin_indicator/to_sparse_input/NotEqualNotEqual-countryOfOrigin_indicator/ExpandDims:output:0:countryOfOrigin_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
1countryOfOrigin_indicator/to_sparse_input/indicesWhere6countryOfOrigin_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
0countryOfOrigin_indicator/to_sparse_input/valuesGatherNd-countryOfOrigin_indicator/ExpandDims:output:09countryOfOrigin_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
5countryOfOrigin_indicator/to_sparse_input/dense_shapeShape-countryOfOrigin_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Jcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handle9countryOfOrigin_indicator/to_sparse_input/values:output:0Kcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
5countryOfOrigin_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
'countryOfOrigin_indicator/SparseToDenseSparseToDense9countryOfOrigin_indicator/to_sparse_input/indices:index:0>countryOfOrigin_indicator/to_sparse_input/dense_shape:output:0FcountryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2:values:0>countryOfOrigin_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????l
'countryOfOrigin_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??n
)countryOfOrigin_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
'countryOfOrigin_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
!countryOfOrigin_indicator/one_hotOneHot/countryOfOrigin_indicator/SparseToDense:dense:00countryOfOrigin_indicator/one_hot/depth:output:00countryOfOrigin_indicator/one_hot/Const:output:02countryOfOrigin_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
/countryOfOrigin_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
countryOfOrigin_indicator/SumSum*countryOfOrigin_indicator/one_hot:output:08countryOfOrigin_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????u
countryOfOrigin_indicator/ShapeShape&countryOfOrigin_indicator/Sum:output:0*
T0*
_output_shapes
:w
-countryOfOrigin_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/countryOfOrigin_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/countryOfOrigin_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'countryOfOrigin_indicator/strided_sliceStridedSlice(countryOfOrigin_indicator/Shape:output:06countryOfOrigin_indicator/strided_slice/stack:output:08countryOfOrigin_indicator/strided_slice/stack_1:output:08countryOfOrigin_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)countryOfOrigin_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'countryOfOrigin_indicator/Reshape/shapePack0countryOfOrigin_indicator/strided_slice:output:02countryOfOrigin_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!countryOfOrigin_indicator/ReshapeReshape&countryOfOrigin_indicator/Sum:output:00countryOfOrigin_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#geoCluster_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
geoCluster_indicator/ExpandDims
ExpandDimsfeatures_geocluster,geoCluster_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????~
3geoCluster_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1geoCluster_indicator/to_sparse_input/ignore_valueCast<geoCluster_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
-geoCluster_indicator/to_sparse_input/NotEqualNotEqual(geoCluster_indicator/ExpandDims:output:05geoCluster_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
,geoCluster_indicator/to_sparse_input/indicesWhere1geoCluster_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
+geoCluster_indicator/to_sparse_input/valuesGatherNd(geoCluster_indicator/ExpandDims:output:04geoCluster_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
0geoCluster_indicator/to_sparse_input/dense_shapeShape(geoCluster_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
8geoCluster_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Egeocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handle4geoCluster_indicator/to_sparse_input/values:output:0Fgeocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????{
0geoCluster_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
"geoCluster_indicator/SparseToDenseSparseToDense4geoCluster_indicator/to_sparse_input/indices:index:09geoCluster_indicator/to_sparse_input/dense_shape:output:0AgeoCluster_indicator/hash_table_Lookup/LookupTableFindV2:values:09geoCluster_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????g
"geoCluster_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
$geoCluster_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    e
"geoCluster_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
geoCluster_indicator/one_hotOneHot*geoCluster_indicator/SparseToDense:dense:0+geoCluster_indicator/one_hot/depth:output:0+geoCluster_indicator/one_hot/Const:output:0-geoCluster_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????}
*geoCluster_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
geoCluster_indicator/SumSum%geoCluster_indicator/one_hot:output:03geoCluster_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????k
geoCluster_indicator/ShapeShape!geoCluster_indicator/Sum:output:0*
T0*
_output_shapes
:r
(geoCluster_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*geoCluster_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*geoCluster_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"geoCluster_indicator/strided_sliceStridedSlice#geoCluster_indicator/Shape:output:01geoCluster_indicator/strided_slice/stack:output:03geoCluster_indicator/strided_slice/stack_1:output:03geoCluster_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$geoCluster_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
"geoCluster_indicator/Reshape/shapePack+geoCluster_indicator/strided_slice:output:0-geoCluster_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
geoCluster_indicator/ReshapeReshape!geoCluster_indicator/Sum:output:0+geoCluster_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????_
price/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
price/ExpandDims
ExpandDimsfeatures_priceprice/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????T
price/ShapeShapeprice/ExpandDims:output:0*
T0*
_output_shapes
:c
price/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
price/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
price/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
price/strided_sliceStridedSliceprice/Shape:output:0"price/strided_slice/stack:output:0$price/strided_slice/stack_1:output:0$price/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
price/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
price/Reshape/shapePackprice/strided_slice:output:0price/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
price/ReshapeReshapeprice/ExpandDims:output:0price/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2#Category_indicator/Reshape:output:0 Group_indicator/Reshape:output:0SKU_indicator/Reshape:output:0!cityId_indicator/Reshape:output:0*countryOfOrigin_indicator/Reshape:output:0%geoCluster_indicator/Reshape:output:0price/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp7^Category_indicator/hash_table_Lookup/LookupTableFindV24^Group_indicator/hash_table_Lookup/LookupTableFindV22^SKU_indicator/hash_table_Lookup/LookupTableFindV25^cityId_indicator/hash_table_Lookup/LookupTableFindV2>^countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV29^geoCluster_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2p
6Category_indicator/hash_table_Lookup/LookupTableFindV26Category_indicator/hash_table_Lookup/LookupTableFindV22j
3Group_indicator/hash_table_Lookup/LookupTableFindV23Group_indicator/hash_table_Lookup/LookupTableFindV22f
1SKU_indicator/hash_table_Lookup/LookupTableFindV21SKU_indicator/hash_table_Lookup/LookupTableFindV22l
4cityId_indicator/hash_table_Lookup/LookupTableFindV24cityId_indicator/hash_table_Lookup/LookupTableFindV22~
=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV22t
8geoCluster_indicator/hash_table_Lookup/LookupTableFindV28geoCluster_indicator/hash_table_Lookup/LookupTableFindV2:V R
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Category:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/Group:QM
#
_output_shapes
:?????????
&
_user_specified_namefeatures/SKU:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/cityId:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/countryOfOrigin:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/date:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/geoCluster:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/price:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?"
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_256952

inputs
inputs_1
inputs_2	
inputs_3	
inputs_4	
inputs_5
inputs_6	
inputs_7
dense_features_256911
dense_features_256913	
dense_features_256915
dense_features_256917	
dense_features_256919
dense_features_256921	
dense_features_256923
dense_features_256925	
dense_features_256927
dense_features_256929	
dense_features_256931
dense_features_256933	!
hidden1_256936:	?
hidden1_256938: 
hidden2_256941:
hidden2_256943:
output_256946:
output_256948:
identity??Hidden1/StatefulPartitionedCall?Hidden2/StatefulPartitionedCall?Output/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7dense_features_256911dense_features_256913dense_features_256915dense_features_256917dense_features_256919dense_features_256921dense_features_256923dense_features_256925dense_features_256927dense_features_256929dense_features_256931dense_features_256933*
Tin
2										*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_256817?
Hidden1/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0hidden1_256936hidden1_256938*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Hidden1_layer_call_and_return_conditional_losses_256479?
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_256941hidden2_256943*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Hidden2_layer_call_and_return_conditional_losses_256496?
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0output_256946output_256948*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_256512v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall^Output/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_1_layer_call_fn_257243
inputs_category
inputs_group

inputs_sku	
inputs_cityid	
inputs_countryoforigin	
inputs_date
inputs_geocluster	
inputs_price
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11:	?

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_categoryinputs_group
inputs_skuinputs_cityidinputs_countryoforigininputs_dateinputs_geoclusterinputs_priceunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*%
Tin
2										*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_256952o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Category:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/Group:OK
#
_output_shapes
:?????????
$
_user_specified_name
inputs/SKU:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/cityId:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/countryOfOrigin:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/date:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/geoCluster:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/price:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
-
__inference__destroyer_258214
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_2583522
.table_init351_lookuptableimportv2_table_handle*
&table_init351_lookuptableimportv2_keys	,
(table_init351_lookuptableimportv2_values	
identity??!table_init351/LookupTableImportV2?
!table_init351/LookupTableImportV2LookupTableImportV2.table_init351_lookuptableimportv2_table_handle&table_init351_lookuptableimportv2_keys(table_init351_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init351/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init351/LookupTableImportV2!table_init351/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_257649
inputs_category
inputs_group

inputs_sku	
inputs_cityid	
inputs_countryoforigin	
inputs_date
inputs_geocluster	
inputs_priceV
Rdense_features_category_indicator_hash_table_lookup_lookuptablefindv2_table_handleW
Sdense_features_category_indicator_hash_table_lookup_lookuptablefindv2_default_value	S
Odense_features_group_indicator_hash_table_lookup_lookuptablefindv2_table_handleT
Pdense_features_group_indicator_hash_table_lookup_lookuptablefindv2_default_value	Q
Mdense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_table_handleR
Ndense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_default_value	T
Pdense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_table_handleU
Qdense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_default_value	]
Ydense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handle^
Zdense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value	X
Tdense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handleY
Udense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value	9
&hidden1_matmul_readvariableop_resource:	?5
'hidden1_biasadd_readvariableop_resource:8
&hidden2_matmul_readvariableop_resource:5
'hidden2_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity??Hidden1/BiasAdd/ReadVariableOp?Hidden1/MatMul/ReadVariableOp?Hidden2/BiasAdd/ReadVariableOp?Hidden2/MatMul/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?Edense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2?Bdense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2?@dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2?Cdense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2?Ldense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2?Gdense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2{
0dense_features/Category_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,dense_features/Category_indicator/ExpandDims
ExpandDimsinputs_category9dense_features/Category_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
@dense_features/Category_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
:dense_features/Category_indicator/to_sparse_input/NotEqualNotEqual5dense_features/Category_indicator/ExpandDims:output:0Idense_features/Category_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
9dense_features/Category_indicator/to_sparse_input/indicesWhere>dense_features/Category_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
8dense_features/Category_indicator/to_sparse_input/valuesGatherNd5dense_features/Category_indicator/ExpandDims:output:0Adense_features/Category_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
=dense_features/Category_indicator/to_sparse_input/dense_shapeShape5dense_features/Category_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Edense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Rdense_features_category_indicator_hash_table_lookup_lookuptablefindv2_table_handleAdense_features/Category_indicator/to_sparse_input/values:output:0Sdense_features_category_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
=dense_features/Category_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
/dense_features/Category_indicator/SparseToDenseSparseToDenseAdense_features/Category_indicator/to_sparse_input/indices:index:0Fdense_features/Category_indicator/to_sparse_input/dense_shape:output:0Ndense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2:values:0Fdense_features/Category_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????t
/dense_features/Category_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??v
1dense_features/Category_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    q
/dense_features/Category_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :'?
)dense_features/Category_indicator/one_hotOneHot7dense_features/Category_indicator/SparseToDense:dense:08dense_features/Category_indicator/one_hot/depth:output:08dense_features/Category_indicator/one_hot/Const:output:0:dense_features/Category_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????'?
7dense_features/Category_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
%dense_features/Category_indicator/SumSum2dense_features/Category_indicator/one_hot:output:0@dense_features/Category_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????'?
'dense_features/Category_indicator/ShapeShape.dense_features/Category_indicator/Sum:output:0*
T0*
_output_shapes
:
5dense_features/Category_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7dense_features/Category_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7dense_features/Category_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/dense_features/Category_indicator/strided_sliceStridedSlice0dense_features/Category_indicator/Shape:output:0>dense_features/Category_indicator/strided_slice/stack:output:0@dense_features/Category_indicator/strided_slice/stack_1:output:0@dense_features/Category_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features/Category_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :'?
/dense_features/Category_indicator/Reshape/shapePack8dense_features/Category_indicator/strided_slice:output:0:dense_features/Category_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)dense_features/Category_indicator/ReshapeReshape.dense_features/Category_indicator/Sum:output:08dense_features/Category_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????'x
-dense_features/Group_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/Group_indicator/ExpandDims
ExpandDimsinputs_group6dense_features/Group_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
=dense_features/Group_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
7dense_features/Group_indicator/to_sparse_input/NotEqualNotEqual2dense_features/Group_indicator/ExpandDims:output:0Fdense_features/Group_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
6dense_features/Group_indicator/to_sparse_input/indicesWhere;dense_features/Group_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
5dense_features/Group_indicator/to_sparse_input/valuesGatherNd2dense_features/Group_indicator/ExpandDims:output:0>dense_features/Group_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
:dense_features/Group_indicator/to_sparse_input/dense_shapeShape2dense_features/Group_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Bdense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Odense_features_group_indicator_hash_table_lookup_lookuptablefindv2_table_handle>dense_features/Group_indicator/to_sparse_input/values:output:0Pdense_features_group_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
:dense_features/Group_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
,dense_features/Group_indicator/SparseToDenseSparseToDense>dense_features/Group_indicator/to_sparse_input/indices:index:0Cdense_features/Group_indicator/to_sparse_input/dense_shape:output:0Kdense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2:values:0Cdense_features/Group_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????q
,dense_features/Group_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??s
.dense_features/Group_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    n
,dense_features/Group_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
&dense_features/Group_indicator/one_hotOneHot4dense_features/Group_indicator/SparseToDense:dense:05dense_features/Group_indicator/one_hot/depth:output:05dense_features/Group_indicator/one_hot/Const:output:07dense_features/Group_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
4dense_features/Group_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
"dense_features/Group_indicator/SumSum/dense_features/Group_indicator/one_hot:output:0=dense_features/Group_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????
$dense_features/Group_indicator/ShapeShape+dense_features/Group_indicator/Sum:output:0*
T0*
_output_shapes
:|
2dense_features/Group_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/Group_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/Group_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/Group_indicator/strided_sliceStridedSlice-dense_features/Group_indicator/Shape:output:0;dense_features/Group_indicator/strided_slice/stack:output:0=dense_features/Group_indicator/strided_slice/stack_1:output:0=dense_features/Group_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/Group_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features/Group_indicator/Reshape/shapePack5dense_features/Group_indicator/strided_slice:output:07dense_features/Group_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/Group_indicator/ReshapeReshape+dense_features/Group_indicator/Sum:output:05dense_features/Group_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????v
+dense_features/SKU_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'dense_features/SKU_indicator/ExpandDims
ExpandDims
inputs_sku4dense_features/SKU_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
;dense_features/SKU_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
9dense_features/SKU_indicator/to_sparse_input/ignore_valueCastDdense_features/SKU_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
5dense_features/SKU_indicator/to_sparse_input/NotEqualNotEqual0dense_features/SKU_indicator/ExpandDims:output:0=dense_features/SKU_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
4dense_features/SKU_indicator/to_sparse_input/indicesWhere9dense_features/SKU_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
3dense_features/SKU_indicator/to_sparse_input/valuesGatherNd0dense_features/SKU_indicator/ExpandDims:output:0<dense_features/SKU_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
8dense_features/SKU_indicator/to_sparse_input/dense_shapeShape0dense_features/SKU_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
@dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Mdense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_table_handle<dense_features/SKU_indicator/to_sparse_input/values:output:0Ndense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
8dense_features/SKU_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
*dense_features/SKU_indicator/SparseToDenseSparseToDense<dense_features/SKU_indicator/to_sparse_input/indices:index:0Adense_features/SKU_indicator/to_sparse_input/dense_shape:output:0Idense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2:values:0Adense_features/SKU_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????o
*dense_features/SKU_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??q
,dense_features/SKU_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    l
*dense_features/SKU_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :<?
$dense_features/SKU_indicator/one_hotOneHot2dense_features/SKU_indicator/SparseToDense:dense:03dense_features/SKU_indicator/one_hot/depth:output:03dense_features/SKU_indicator/one_hot/Const:output:05dense_features/SKU_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????<?
2dense_features/SKU_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
 dense_features/SKU_indicator/SumSum-dense_features/SKU_indicator/one_hot:output:0;dense_features/SKU_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????<{
"dense_features/SKU_indicator/ShapeShape)dense_features/SKU_indicator/Sum:output:0*
T0*
_output_shapes
:z
0dense_features/SKU_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_features/SKU_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_features/SKU_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_features/SKU_indicator/strided_sliceStridedSlice+dense_features/SKU_indicator/Shape:output:09dense_features/SKU_indicator/strided_slice/stack:output:0;dense_features/SKU_indicator/strided_slice/stack_1:output:0;dense_features/SKU_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,dense_features/SKU_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :<?
*dense_features/SKU_indicator/Reshape/shapePack3dense_features/SKU_indicator/strided_slice:output:05dense_features/SKU_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
$dense_features/SKU_indicator/ReshapeReshape)dense_features/SKU_indicator/Sum:output:03dense_features/SKU_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????<y
.dense_features/cityId_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/cityId_indicator/ExpandDims
ExpandDimsinputs_cityid7dense_features/cityId_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
>dense_features/cityId_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
<dense_features/cityId_indicator/to_sparse_input/ignore_valueCastGdense_features/cityId_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
8dense_features/cityId_indicator/to_sparse_input/NotEqualNotEqual3dense_features/cityId_indicator/ExpandDims:output:0@dense_features/cityId_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
7dense_features/cityId_indicator/to_sparse_input/indicesWhere<dense_features/cityId_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features/cityId_indicator/to_sparse_input/valuesGatherNd3dense_features/cityId_indicator/ExpandDims:output:0?dense_features/cityId_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
;dense_features/cityId_indicator/to_sparse_input/dense_shapeShape3dense_features/cityId_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Cdense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Pdense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_table_handle?dense_features/cityId_indicator/to_sparse_input/values:output:0Qdense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
;dense_features/cityId_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
-dense_features/cityId_indicator/SparseToDenseSparseToDense?dense_features/cityId_indicator/to_sparse_input/indices:index:0Ddense_features/cityId_indicator/to_sparse_input/dense_shape:output:0Ldense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2:values:0Ddense_features/cityId_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????r
-dense_features/cityId_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??t
/dense_features/cityId_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    o
-dense_features/cityId_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
'dense_features/cityId_indicator/one_hotOneHot5dense_features/cityId_indicator/SparseToDense:dense:06dense_features/cityId_indicator/one_hot/depth:output:06dense_features/cityId_indicator/one_hot/Const:output:08dense_features/cityId_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
5dense_features/cityId_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
#dense_features/cityId_indicator/SumSum0dense_features/cityId_indicator/one_hot:output:0>dense_features/cityId_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
%dense_features/cityId_indicator/ShapeShape,dense_features/cityId_indicator/Sum:output:0*
T0*
_output_shapes
:}
3dense_features/cityId_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/cityId_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/cityId_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/cityId_indicator/strided_sliceStridedSlice.dense_features/cityId_indicator/Shape:output:0<dense_features/cityId_indicator/strided_slice/stack:output:0>dense_features/cityId_indicator/strided_slice/stack_1:output:0>dense_features/cityId_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features/cityId_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/cityId_indicator/Reshape/shapePack6dense_features/cityId_indicator/strided_slice:output:08dense_features/cityId_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/cityId_indicator/ReshapeReshape,dense_features/cityId_indicator/Sum:output:06dense_features/cityId_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
7dense_features/countryOfOrigin_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
3dense_features/countryOfOrigin_indicator/ExpandDims
ExpandDimsinputs_countryoforigin@dense_features/countryOfOrigin_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
Gdense_features/countryOfOrigin_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Edense_features/countryOfOrigin_indicator/to_sparse_input/ignore_valueCastPdense_features/countryOfOrigin_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
Adense_features/countryOfOrigin_indicator/to_sparse_input/NotEqualNotEqual<dense_features/countryOfOrigin_indicator/ExpandDims:output:0Idense_features/countryOfOrigin_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
@dense_features/countryOfOrigin_indicator/to_sparse_input/indicesWhereEdense_features/countryOfOrigin_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
?dense_features/countryOfOrigin_indicator/to_sparse_input/valuesGatherNd<dense_features/countryOfOrigin_indicator/ExpandDims:output:0Hdense_features/countryOfOrigin_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Ddense_features/countryOfOrigin_indicator/to_sparse_input/dense_shapeShape<dense_features/countryOfOrigin_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Ldense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ydense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handleHdense_features/countryOfOrigin_indicator/to_sparse_input/values:output:0Zdense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Ddense_features/countryOfOrigin_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
6dense_features/countryOfOrigin_indicator/SparseToDenseSparseToDenseHdense_features/countryOfOrigin_indicator/to_sparse_input/indices:index:0Mdense_features/countryOfOrigin_indicator/to_sparse_input/dense_shape:output:0Udense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2:values:0Mdense_features/countryOfOrigin_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????{
6dense_features/countryOfOrigin_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??}
8dense_features/countryOfOrigin_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    x
6dense_features/countryOfOrigin_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
0dense_features/countryOfOrigin_indicator/one_hotOneHot>dense_features/countryOfOrigin_indicator/SparseToDense:dense:0?dense_features/countryOfOrigin_indicator/one_hot/depth:output:0?dense_features/countryOfOrigin_indicator/one_hot/Const:output:0Adense_features/countryOfOrigin_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
>dense_features/countryOfOrigin_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
,dense_features/countryOfOrigin_indicator/SumSum9dense_features/countryOfOrigin_indicator/one_hot:output:0Gdense_features/countryOfOrigin_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
.dense_features/countryOfOrigin_indicator/ShapeShape5dense_features/countryOfOrigin_indicator/Sum:output:0*
T0*
_output_shapes
:?
<dense_features/countryOfOrigin_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>dense_features/countryOfOrigin_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>dense_features/countryOfOrigin_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6dense_features/countryOfOrigin_indicator/strided_sliceStridedSlice7dense_features/countryOfOrigin_indicator/Shape:output:0Edense_features/countryOfOrigin_indicator/strided_slice/stack:output:0Gdense_features/countryOfOrigin_indicator/strided_slice/stack_1:output:0Gdense_features/countryOfOrigin_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8dense_features/countryOfOrigin_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
6dense_features/countryOfOrigin_indicator/Reshape/shapePack?dense_features/countryOfOrigin_indicator/strided_slice:output:0Adense_features/countryOfOrigin_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
0dense_features/countryOfOrigin_indicator/ReshapeReshape5dense_features/countryOfOrigin_indicator/Sum:output:0?dense_features/countryOfOrigin_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????}
2dense_features/geoCluster_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.dense_features/geoCluster_indicator/ExpandDims
ExpandDimsinputs_geocluster;dense_features/geoCluster_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
Bdense_features/geoCluster_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
@dense_features/geoCluster_indicator/to_sparse_input/ignore_valueCastKdense_features/geoCluster_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
<dense_features/geoCluster_indicator/to_sparse_input/NotEqualNotEqual7dense_features/geoCluster_indicator/ExpandDims:output:0Ddense_features/geoCluster_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
;dense_features/geoCluster_indicator/to_sparse_input/indicesWhere@dense_features/geoCluster_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
:dense_features/geoCluster_indicator/to_sparse_input/valuesGatherNd7dense_features/geoCluster_indicator/ExpandDims:output:0Cdense_features/geoCluster_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
?dense_features/geoCluster_indicator/to_sparse_input/dense_shapeShape7dense_features/geoCluster_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Gdense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Tdense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handleCdense_features/geoCluster_indicator/to_sparse_input/values:output:0Udense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
?dense_features/geoCluster_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
1dense_features/geoCluster_indicator/SparseToDenseSparseToDenseCdense_features/geoCluster_indicator/to_sparse_input/indices:index:0Hdense_features/geoCluster_indicator/to_sparse_input/dense_shape:output:0Pdense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2:values:0Hdense_features/geoCluster_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????v
1dense_features/geoCluster_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??x
3dense_features/geoCluster_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    t
1dense_features/geoCluster_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
+dense_features/geoCluster_indicator/one_hotOneHot9dense_features/geoCluster_indicator/SparseToDense:dense:0:dense_features/geoCluster_indicator/one_hot/depth:output:0:dense_features/geoCluster_indicator/one_hot/Const:output:0<dense_features/geoCluster_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
9dense_features/geoCluster_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
'dense_features/geoCluster_indicator/SumSum4dense_features/geoCluster_indicator/one_hot:output:0Bdense_features/geoCluster_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
)dense_features/geoCluster_indicator/ShapeShape0dense_features/geoCluster_indicator/Sum:output:0*
T0*
_output_shapes
:?
7dense_features/geoCluster_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9dense_features/geoCluster_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9dense_features/geoCluster_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1dense_features/geoCluster_indicator/strided_sliceStridedSlice2dense_features/geoCluster_indicator/Shape:output:0@dense_features/geoCluster_indicator/strided_slice/stack:output:0Bdense_features/geoCluster_indicator/strided_slice/stack_1:output:0Bdense_features/geoCluster_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
3dense_features/geoCluster_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
1dense_features/geoCluster_indicator/Reshape/shapePack:dense_features/geoCluster_indicator/strided_slice:output:0<dense_features/geoCluster_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
+dense_features/geoCluster_indicator/ReshapeReshape0dense_features/geoCluster_indicator/Sum:output:0:dense_features/geoCluster_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????n
#dense_features/price/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/price/ExpandDims
ExpandDimsinputs_price,dense_features/price/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
dense_features/price/ShapeShape(dense_features/price/ExpandDims:output:0*
T0*
_output_shapes
:r
(dense_features/price/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*dense_features/price/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*dense_features/price/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"dense_features/price/strided_sliceStridedSlice#dense_features/price/Shape:output:01dense_features/price/strided_slice/stack:output:03dense_features/price/strided_slice/stack_1:output:03dense_features/price/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$dense_features/price/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
"dense_features/price/Reshape/shapePack+dense_features/price/strided_slice:output:0-dense_features/price/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/price/ReshapeReshape(dense_features/price/ExpandDims:output:0+dense_features/price/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/concatConcatV22dense_features/Category_indicator/Reshape:output:0/dense_features/Group_indicator/Reshape:output:0-dense_features/SKU_indicator/Reshape:output:00dense_features/cityId_indicator/Reshape:output:09dense_features/countryOfOrigin_indicator/Reshape:output:04dense_features/geoCluster_indicator/Reshape:output:0%dense_features/price/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
Hidden1/MatMul/ReadVariableOpReadVariableOp&hidden1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
Hidden1/MatMulMatMuldense_features/concat:output:0%Hidden1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Hidden1/BiasAdd/ReadVariableOpReadVariableOp'hidden1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Hidden1/BiasAddBiasAddHidden1/MatMul:product:0&Hidden1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
Hidden1/ReluReluHidden1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
Hidden2/MatMul/ReadVariableOpReadVariableOp&hidden2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
Hidden2/MatMulMatMulHidden1/Relu:activations:0%Hidden2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Hidden2/BiasAdd/ReadVariableOpReadVariableOp'hidden2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Hidden2/BiasAddBiasAddHidden2/MatMul:product:0&Hidden2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
Hidden2/ReluReluHidden2/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
Output/MatMulMatMulHidden2/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
IdentityIdentityOutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Hidden1/BiasAdd/ReadVariableOp^Hidden1/MatMul/ReadVariableOp^Hidden2/BiasAdd/ReadVariableOp^Hidden2/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOpF^dense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2C^dense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2A^dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2D^dense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2M^dense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2H^dense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2@
Hidden1/BiasAdd/ReadVariableOpHidden1/BiasAdd/ReadVariableOp2>
Hidden1/MatMul/ReadVariableOpHidden1/MatMul/ReadVariableOp2@
Hidden2/BiasAdd/ReadVariableOpHidden2/BiasAdd/ReadVariableOp2>
Hidden2/MatMul/ReadVariableOpHidden2/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp2?
Edense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2Edense_features/Category_indicator/hash_table_Lookup/LookupTableFindV22?
Bdense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2Bdense_features/Group_indicator/hash_table_Lookup/LookupTableFindV22?
@dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2@dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV22?
Cdense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2Cdense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV22?
Ldense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2Ldense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV22?
Gdense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2Gdense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2:T P
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Category:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/Group:OK
#
_output_shapes
:?????????
$
_user_specified_name
inputs/SKU:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/cityId:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/countryOfOrigin:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/date:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/geoCluster:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/price:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_2583202
.table_init199_lookuptableimportv2_table_handle*
&table_init199_lookuptableimportv2_keys,
(table_init199_lookuptableimportv2_values	
identity??!table_init199/LookupTableImportV2?
!table_init199/LookupTableImportV2LookupTableImportV2.table_init199_lookuptableimportv2_table_handle&table_init199_lookuptableimportv2_keys(table_init199_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init199/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init199/LookupTableImportV2!table_init199/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
;
__inference__creator_258219
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name200*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?"
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_257090
category	
group
sku	

cityid	
countryoforigin	
date

geocluster		
price
dense_features_257049
dense_features_257051	
dense_features_257053
dense_features_257055	
dense_features_257057
dense_features_257059	
dense_features_257061
dense_features_257063	
dense_features_257065
dense_features_257067	
dense_features_257069
dense_features_257071	!
hidden1_257074:	?
hidden1_257076: 
hidden2_257079:
hidden2_257081:
output_257084:
output_257086:
identity??Hidden1/StatefulPartitionedCall?Hidden2/StatefulPartitionedCall?Output/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallcategorygroupskucityidcountryoforigindate
geoclusterpricedense_features_257049dense_features_257051dense_features_257053dense_features_257055dense_features_257057dense_features_257059dense_features_257061dense_features_257063dense_features_257065dense_features_257067dense_features_257069dense_features_257071*
Tin
2										*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_256442?
Hidden1/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0hidden1_257074hidden1_257076*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Hidden1_layer_call_and_return_conditional_losses_256479?
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_257079hidden2_257081*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Hidden2_layer_call_and_return_conditional_losses_256496?
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0output_257084output_257086*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_256512v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall^Output/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
Category:JF
#
_output_shapes
:?????????

_user_specified_nameGroup:HD
#
_output_shapes
:?????????

_user_specified_nameSKU:KG
#
_output_shapes
:?????????
 
_user_specified_namecityId:TP
#
_output_shapes
:?????????
)
_user_specified_namecountryOfOrigin:IE
#
_output_shapes
:?????????

_user_specified_namedate:OK
#
_output_shapes
:?????????
$
_user_specified_name
geoCluster:JF
#
_output_shapes
:?????????

_user_specified_nameprice:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_2583442
.table_init313_lookuptableimportv2_table_handle*
&table_init313_lookuptableimportv2_keys	,
(table_init313_lookuptableimportv2_values	
identity??!table_init313/LookupTableImportV2?
!table_init313/LookupTableImportV2LookupTableImportV2.table_init313_lookuptableimportv2_table_handle&table_init313_lookuptableimportv2_keys(table_init313_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init313/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init313/LookupTableImportV2!table_init313/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
-
__inference__destroyer_258232
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference__initializer_2582092
.table_init163_lookuptableimportv2_table_handle*
&table_init163_lookuptableimportv2_keys,
(table_init163_lookuptableimportv2_values	
identity??!table_init163/LookupTableImportV2?
!table_init163/LookupTableImportV2LookupTableImportV2.table_init163_lookuptableimportv2_table_handle&table_init163_lookuptableimportv2_keys(table_init163_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init163/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :':'2F
!table_init163/LookupTableImportV2!table_init163/LookupTableImportV2: 

_output_shapes
:': 

_output_shapes
:'
?
?
__inference_<lambda>_2583362
.table_init275_lookuptableimportv2_table_handle*
&table_init275_lookuptableimportv2_keys	,
(table_init275_lookuptableimportv2_values	
identity??!table_init275/LookupTableImportV2?
!table_init275/LookupTableImportV2LookupTableImportV2.table_init275_lookuptableimportv2_table_handle&table_init275_lookuptableimportv2_keys(table_init275_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init275/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init275/LookupTableImportV2!table_init275/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
-
__inference__destroyer_258268
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
!__inference__wrapped_model_256238
category	
group
sku	

cityid	
countryoforigin	
date

geocluster		
pricec
_sequential_1_dense_features_category_indicator_hash_table_lookup_lookuptablefindv2_table_handled
`sequential_1_dense_features_category_indicator_hash_table_lookup_lookuptablefindv2_default_value	`
\sequential_1_dense_features_group_indicator_hash_table_lookup_lookuptablefindv2_table_handlea
]sequential_1_dense_features_group_indicator_hash_table_lookup_lookuptablefindv2_default_value	^
Zsequential_1_dense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_table_handle_
[sequential_1_dense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_default_value	a
]sequential_1_dense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_table_handleb
^sequential_1_dense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_default_value	j
fsequential_1_dense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handlek
gsequential_1_dense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value	e
asequential_1_dense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handlef
bsequential_1_dense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value	F
3sequential_1_hidden1_matmul_readvariableop_resource:	?B
4sequential_1_hidden1_biasadd_readvariableop_resource:E
3sequential_1_hidden2_matmul_readvariableop_resource:B
4sequential_1_hidden2_biasadd_readvariableop_resource:D
2sequential_1_output_matmul_readvariableop_resource:A
3sequential_1_output_biasadd_readvariableop_resource:
identity??+sequential_1/Hidden1/BiasAdd/ReadVariableOp?*sequential_1/Hidden1/MatMul/ReadVariableOp?+sequential_1/Hidden2/BiasAdd/ReadVariableOp?*sequential_1/Hidden2/MatMul/ReadVariableOp?*sequential_1/Output/BiasAdd/ReadVariableOp?)sequential_1/Output/MatMul/ReadVariableOp?Rsequential_1/dense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2?Osequential_1/dense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2?Msequential_1/dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2?Psequential_1/dense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2?Ysequential_1/dense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2?Tsequential_1/dense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2?
=sequential_1/dense_features/Category_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
9sequential_1/dense_features/Category_indicator/ExpandDims
ExpandDimscategoryFsequential_1/dense_features/Category_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Msequential_1/dense_features/Category_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Gsequential_1/dense_features/Category_indicator/to_sparse_input/NotEqualNotEqualBsequential_1/dense_features/Category_indicator/ExpandDims:output:0Vsequential_1/dense_features/Category_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Fsequential_1/dense_features/Category_indicator/to_sparse_input/indicesWhereKsequential_1/dense_features/Category_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Esequential_1/dense_features/Category_indicator/to_sparse_input/valuesGatherNdBsequential_1/dense_features/Category_indicator/ExpandDims:output:0Nsequential_1/dense_features/Category_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Jsequential_1/dense_features/Category_indicator/to_sparse_input/dense_shapeShapeBsequential_1/dense_features/Category_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Rsequential_1/dense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2_sequential_1_dense_features_category_indicator_hash_table_lookup_lookuptablefindv2_table_handleNsequential_1/dense_features/Category_indicator/to_sparse_input/values:output:0`sequential_1_dense_features_category_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Jsequential_1/dense_features/Category_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
<sequential_1/dense_features/Category_indicator/SparseToDenseSparseToDenseNsequential_1/dense_features/Category_indicator/to_sparse_input/indices:index:0Ssequential_1/dense_features/Category_indicator/to_sparse_input/dense_shape:output:0[sequential_1/dense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2:values:0Ssequential_1/dense_features/Category_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
<sequential_1/dense_features/Category_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
>sequential_1/dense_features/Category_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ~
<sequential_1/dense_features/Category_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :'?
6sequential_1/dense_features/Category_indicator/one_hotOneHotDsequential_1/dense_features/Category_indicator/SparseToDense:dense:0Esequential_1/dense_features/Category_indicator/one_hot/depth:output:0Esequential_1/dense_features/Category_indicator/one_hot/Const:output:0Gsequential_1/dense_features/Category_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????'?
Dsequential_1/dense_features/Category_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
2sequential_1/dense_features/Category_indicator/SumSum?sequential_1/dense_features/Category_indicator/one_hot:output:0Msequential_1/dense_features/Category_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????'?
4sequential_1/dense_features/Category_indicator/ShapeShape;sequential_1/dense_features/Category_indicator/Sum:output:0*
T0*
_output_shapes
:?
Bsequential_1/dense_features/Category_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dsequential_1/dense_features/Category_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dsequential_1/dense_features/Category_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential_1/dense_features/Category_indicator/strided_sliceStridedSlice=sequential_1/dense_features/Category_indicator/Shape:output:0Ksequential_1/dense_features/Category_indicator/strided_slice/stack:output:0Msequential_1/dense_features/Category_indicator/strided_slice/stack_1:output:0Msequential_1/dense_features/Category_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
>sequential_1/dense_features/Category_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :'?
<sequential_1/dense_features/Category_indicator/Reshape/shapePackEsequential_1/dense_features/Category_indicator/strided_slice:output:0Gsequential_1/dense_features/Category_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
6sequential_1/dense_features/Category_indicator/ReshapeReshape;sequential_1/dense_features/Category_indicator/Sum:output:0Esequential_1/dense_features/Category_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????'?
:sequential_1/dense_features/Group_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6sequential_1/dense_features/Group_indicator/ExpandDims
ExpandDimsgroupCsequential_1/dense_features/Group_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Jsequential_1/dense_features/Group_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Dsequential_1/dense_features/Group_indicator/to_sparse_input/NotEqualNotEqual?sequential_1/dense_features/Group_indicator/ExpandDims:output:0Ssequential_1/dense_features/Group_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Csequential_1/dense_features/Group_indicator/to_sparse_input/indicesWhereHsequential_1/dense_features/Group_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Bsequential_1/dense_features/Group_indicator/to_sparse_input/valuesGatherNd?sequential_1/dense_features/Group_indicator/ExpandDims:output:0Ksequential_1/dense_features/Group_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Gsequential_1/dense_features/Group_indicator/to_sparse_input/dense_shapeShape?sequential_1/dense_features/Group_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Osequential_1/dense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2\sequential_1_dense_features_group_indicator_hash_table_lookup_lookuptablefindv2_table_handleKsequential_1/dense_features/Group_indicator/to_sparse_input/values:output:0]sequential_1_dense_features_group_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Gsequential_1/dense_features/Group_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
9sequential_1/dense_features/Group_indicator/SparseToDenseSparseToDenseKsequential_1/dense_features/Group_indicator/to_sparse_input/indices:index:0Psequential_1/dense_features/Group_indicator/to_sparse_input/dense_shape:output:0Xsequential_1/dense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2:values:0Psequential_1/dense_features/Group_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????~
9sequential_1/dense_features/Group_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
;sequential_1/dense_features/Group_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    {
9sequential_1/dense_features/Group_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
3sequential_1/dense_features/Group_indicator/one_hotOneHotAsequential_1/dense_features/Group_indicator/SparseToDense:dense:0Bsequential_1/dense_features/Group_indicator/one_hot/depth:output:0Bsequential_1/dense_features/Group_indicator/one_hot/Const:output:0Dsequential_1/dense_features/Group_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
Asequential_1/dense_features/Group_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
/sequential_1/dense_features/Group_indicator/SumSum<sequential_1/dense_features/Group_indicator/one_hot:output:0Jsequential_1/dense_features/Group_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
1sequential_1/dense_features/Group_indicator/ShapeShape8sequential_1/dense_features/Group_indicator/Sum:output:0*
T0*
_output_shapes
:?
?sequential_1/dense_features/Group_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Asequential_1/dense_features/Group_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Asequential_1/dense_features/Group_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9sequential_1/dense_features/Group_indicator/strided_sliceStridedSlice:sequential_1/dense_features/Group_indicator/Shape:output:0Hsequential_1/dense_features/Group_indicator/strided_slice/stack:output:0Jsequential_1/dense_features/Group_indicator/strided_slice/stack_1:output:0Jsequential_1/dense_features/Group_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential_1/dense_features/Group_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
9sequential_1/dense_features/Group_indicator/Reshape/shapePackBsequential_1/dense_features/Group_indicator/strided_slice:output:0Dsequential_1/dense_features/Group_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
3sequential_1/dense_features/Group_indicator/ReshapeReshape8sequential_1/dense_features/Group_indicator/Sum:output:0Bsequential_1/dense_features/Group_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
8sequential_1/dense_features/SKU_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
4sequential_1/dense_features/SKU_indicator/ExpandDims
ExpandDimsskuAsequential_1/dense_features/SKU_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
Hsequential_1/dense_features/SKU_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Fsequential_1/dense_features/SKU_indicator/to_sparse_input/ignore_valueCastQsequential_1/dense_features/SKU_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
Bsequential_1/dense_features/SKU_indicator/to_sparse_input/NotEqualNotEqual=sequential_1/dense_features/SKU_indicator/ExpandDims:output:0Jsequential_1/dense_features/SKU_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
Asequential_1/dense_features/SKU_indicator/to_sparse_input/indicesWhereFsequential_1/dense_features/SKU_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
@sequential_1/dense_features/SKU_indicator/to_sparse_input/valuesGatherNd=sequential_1/dense_features/SKU_indicator/ExpandDims:output:0Isequential_1/dense_features/SKU_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Esequential_1/dense_features/SKU_indicator/to_sparse_input/dense_shapeShape=sequential_1/dense_features/SKU_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Msequential_1/dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Zsequential_1_dense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_table_handleIsequential_1/dense_features/SKU_indicator/to_sparse_input/values:output:0[sequential_1_dense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Esequential_1/dense_features/SKU_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
7sequential_1/dense_features/SKU_indicator/SparseToDenseSparseToDenseIsequential_1/dense_features/SKU_indicator/to_sparse_input/indices:index:0Nsequential_1/dense_features/SKU_indicator/to_sparse_input/dense_shape:output:0Vsequential_1/dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2:values:0Nsequential_1/dense_features/SKU_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????|
7sequential_1/dense_features/SKU_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??~
9sequential_1/dense_features/SKU_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    y
7sequential_1/dense_features/SKU_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :<?
1sequential_1/dense_features/SKU_indicator/one_hotOneHot?sequential_1/dense_features/SKU_indicator/SparseToDense:dense:0@sequential_1/dense_features/SKU_indicator/one_hot/depth:output:0@sequential_1/dense_features/SKU_indicator/one_hot/Const:output:0Bsequential_1/dense_features/SKU_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????<?
?sequential_1/dense_features/SKU_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
-sequential_1/dense_features/SKU_indicator/SumSum:sequential_1/dense_features/SKU_indicator/one_hot:output:0Hsequential_1/dense_features/SKU_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????<?
/sequential_1/dense_features/SKU_indicator/ShapeShape6sequential_1/dense_features/SKU_indicator/Sum:output:0*
T0*
_output_shapes
:?
=sequential_1/dense_features/SKU_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential_1/dense_features/SKU_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential_1/dense_features/SKU_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_1/dense_features/SKU_indicator/strided_sliceStridedSlice8sequential_1/dense_features/SKU_indicator/Shape:output:0Fsequential_1/dense_features/SKU_indicator/strided_slice/stack:output:0Hsequential_1/dense_features/SKU_indicator/strided_slice/stack_1:output:0Hsequential_1/dense_features/SKU_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9sequential_1/dense_features/SKU_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :<?
7sequential_1/dense_features/SKU_indicator/Reshape/shapePack@sequential_1/dense_features/SKU_indicator/strided_slice:output:0Bsequential_1/dense_features/SKU_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
1sequential_1/dense_features/SKU_indicator/ReshapeReshape6sequential_1/dense_features/SKU_indicator/Sum:output:0@sequential_1/dense_features/SKU_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????<?
;sequential_1/dense_features/cityId_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
7sequential_1/dense_features/cityId_indicator/ExpandDims
ExpandDimscityidDsequential_1/dense_features/cityId_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
Ksequential_1/dense_features/cityId_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Isequential_1/dense_features/cityId_indicator/to_sparse_input/ignore_valueCastTsequential_1/dense_features/cityId_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
Esequential_1/dense_features/cityId_indicator/to_sparse_input/NotEqualNotEqual@sequential_1/dense_features/cityId_indicator/ExpandDims:output:0Msequential_1/dense_features/cityId_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
Dsequential_1/dense_features/cityId_indicator/to_sparse_input/indicesWhereIsequential_1/dense_features/cityId_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Csequential_1/dense_features/cityId_indicator/to_sparse_input/valuesGatherNd@sequential_1/dense_features/cityId_indicator/ExpandDims:output:0Lsequential_1/dense_features/cityId_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Hsequential_1/dense_features/cityId_indicator/to_sparse_input/dense_shapeShape@sequential_1/dense_features/cityId_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Psequential_1/dense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2]sequential_1_dense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_table_handleLsequential_1/dense_features/cityId_indicator/to_sparse_input/values:output:0^sequential_1_dense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Hsequential_1/dense_features/cityId_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
:sequential_1/dense_features/cityId_indicator/SparseToDenseSparseToDenseLsequential_1/dense_features/cityId_indicator/to_sparse_input/indices:index:0Qsequential_1/dense_features/cityId_indicator/to_sparse_input/dense_shape:output:0Ysequential_1/dense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2:values:0Qsequential_1/dense_features/cityId_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????
:sequential_1/dense_features/cityId_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
<sequential_1/dense_features/cityId_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    |
:sequential_1/dense_features/cityId_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
4sequential_1/dense_features/cityId_indicator/one_hotOneHotBsequential_1/dense_features/cityId_indicator/SparseToDense:dense:0Csequential_1/dense_features/cityId_indicator/one_hot/depth:output:0Csequential_1/dense_features/cityId_indicator/one_hot/Const:output:0Esequential_1/dense_features/cityId_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
Bsequential_1/dense_features/cityId_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
0sequential_1/dense_features/cityId_indicator/SumSum=sequential_1/dense_features/cityId_indicator/one_hot:output:0Ksequential_1/dense_features/cityId_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
2sequential_1/dense_features/cityId_indicator/ShapeShape9sequential_1/dense_features/cityId_indicator/Sum:output:0*
T0*
_output_shapes
:?
@sequential_1/dense_features/cityId_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Bsequential_1/dense_features/cityId_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Bsequential_1/dense_features/cityId_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:sequential_1/dense_features/cityId_indicator/strided_sliceStridedSlice;sequential_1/dense_features/cityId_indicator/Shape:output:0Isequential_1/dense_features/cityId_indicator/strided_slice/stack:output:0Ksequential_1/dense_features/cityId_indicator/strided_slice/stack_1:output:0Ksequential_1/dense_features/cityId_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
<sequential_1/dense_features/cityId_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
:sequential_1/dense_features/cityId_indicator/Reshape/shapePackCsequential_1/dense_features/cityId_indicator/strided_slice:output:0Esequential_1/dense_features/cityId_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
4sequential_1/dense_features/cityId_indicator/ReshapeReshape9sequential_1/dense_features/cityId_indicator/Sum:output:0Csequential_1/dense_features/cityId_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
Dsequential_1/dense_features/countryOfOrigin_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
@sequential_1/dense_features/countryOfOrigin_indicator/ExpandDims
ExpandDimscountryoforiginMsequential_1/dense_features/countryOfOrigin_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
Tsequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Rsequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/ignore_valueCast]sequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
Nsequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/NotEqualNotEqualIsequential_1/dense_features/countryOfOrigin_indicator/ExpandDims:output:0Vsequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
Msequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/indicesWhereRsequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Lsequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/valuesGatherNdIsequential_1/dense_features/countryOfOrigin_indicator/ExpandDims:output:0Usequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Qsequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/dense_shapeShapeIsequential_1/dense_features/countryOfOrigin_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Ysequential_1/dense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2fsequential_1_dense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handleUsequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/values:output:0gsequential_1_dense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Qsequential_1/dense_features/countryOfOrigin_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Csequential_1/dense_features/countryOfOrigin_indicator/SparseToDenseSparseToDenseUsequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/indices:index:0Zsequential_1/dense_features/countryOfOrigin_indicator/to_sparse_input/dense_shape:output:0bsequential_1/dense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2:values:0Zsequential_1/dense_features/countryOfOrigin_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
Csequential_1/dense_features/countryOfOrigin_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
Esequential_1/dense_features/countryOfOrigin_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
Csequential_1/dense_features/countryOfOrigin_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
=sequential_1/dense_features/countryOfOrigin_indicator/one_hotOneHotKsequential_1/dense_features/countryOfOrigin_indicator/SparseToDense:dense:0Lsequential_1/dense_features/countryOfOrigin_indicator/one_hot/depth:output:0Lsequential_1/dense_features/countryOfOrigin_indicator/one_hot/Const:output:0Nsequential_1/dense_features/countryOfOrigin_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
Ksequential_1/dense_features/countryOfOrigin_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
9sequential_1/dense_features/countryOfOrigin_indicator/SumSumFsequential_1/dense_features/countryOfOrigin_indicator/one_hot:output:0Tsequential_1/dense_features/countryOfOrigin_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
;sequential_1/dense_features/countryOfOrigin_indicator/ShapeShapeBsequential_1/dense_features/countryOfOrigin_indicator/Sum:output:0*
T0*
_output_shapes
:?
Isequential_1/dense_features/countryOfOrigin_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Ksequential_1/dense_features/countryOfOrigin_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Ksequential_1/dense_features/countryOfOrigin_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Csequential_1/dense_features/countryOfOrigin_indicator/strided_sliceStridedSliceDsequential_1/dense_features/countryOfOrigin_indicator/Shape:output:0Rsequential_1/dense_features/countryOfOrigin_indicator/strided_slice/stack:output:0Tsequential_1/dense_features/countryOfOrigin_indicator/strided_slice/stack_1:output:0Tsequential_1/dense_features/countryOfOrigin_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Esequential_1/dense_features/countryOfOrigin_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Csequential_1/dense_features/countryOfOrigin_indicator/Reshape/shapePackLsequential_1/dense_features/countryOfOrigin_indicator/strided_slice:output:0Nsequential_1/dense_features/countryOfOrigin_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
=sequential_1/dense_features/countryOfOrigin_indicator/ReshapeReshapeBsequential_1/dense_features/countryOfOrigin_indicator/Sum:output:0Lsequential_1/dense_features/countryOfOrigin_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
?sequential_1/dense_features/geoCluster_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
;sequential_1/dense_features/geoCluster_indicator/ExpandDims
ExpandDims
geoclusterHsequential_1/dense_features/geoCluster_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
Osequential_1/dense_features/geoCluster_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Msequential_1/dense_features/geoCluster_indicator/to_sparse_input/ignore_valueCastXsequential_1/dense_features/geoCluster_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
Isequential_1/dense_features/geoCluster_indicator/to_sparse_input/NotEqualNotEqualDsequential_1/dense_features/geoCluster_indicator/ExpandDims:output:0Qsequential_1/dense_features/geoCluster_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
Hsequential_1/dense_features/geoCluster_indicator/to_sparse_input/indicesWhereMsequential_1/dense_features/geoCluster_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Gsequential_1/dense_features/geoCluster_indicator/to_sparse_input/valuesGatherNdDsequential_1/dense_features/geoCluster_indicator/ExpandDims:output:0Psequential_1/dense_features/geoCluster_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Lsequential_1/dense_features/geoCluster_indicator/to_sparse_input/dense_shapeShapeDsequential_1/dense_features/geoCluster_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Tsequential_1/dense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2asequential_1_dense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handlePsequential_1/dense_features/geoCluster_indicator/to_sparse_input/values:output:0bsequential_1_dense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Lsequential_1/dense_features/geoCluster_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
>sequential_1/dense_features/geoCluster_indicator/SparseToDenseSparseToDensePsequential_1/dense_features/geoCluster_indicator/to_sparse_input/indices:index:0Usequential_1/dense_features/geoCluster_indicator/to_sparse_input/dense_shape:output:0]sequential_1/dense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2:values:0Usequential_1/dense_features/geoCluster_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
>sequential_1/dense_features/geoCluster_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
@sequential_1/dense_features/geoCluster_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
>sequential_1/dense_features/geoCluster_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
8sequential_1/dense_features/geoCluster_indicator/one_hotOneHotFsequential_1/dense_features/geoCluster_indicator/SparseToDense:dense:0Gsequential_1/dense_features/geoCluster_indicator/one_hot/depth:output:0Gsequential_1/dense_features/geoCluster_indicator/one_hot/Const:output:0Isequential_1/dense_features/geoCluster_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
Fsequential_1/dense_features/geoCluster_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
4sequential_1/dense_features/geoCluster_indicator/SumSumAsequential_1/dense_features/geoCluster_indicator/one_hot:output:0Osequential_1/dense_features/geoCluster_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
6sequential_1/dense_features/geoCluster_indicator/ShapeShape=sequential_1/dense_features/geoCluster_indicator/Sum:output:0*
T0*
_output_shapes
:?
Dsequential_1/dense_features/geoCluster_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Fsequential_1/dense_features/geoCluster_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Fsequential_1/dense_features/geoCluster_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential_1/dense_features/geoCluster_indicator/strided_sliceStridedSlice?sequential_1/dense_features/geoCluster_indicator/Shape:output:0Msequential_1/dense_features/geoCluster_indicator/strided_slice/stack:output:0Osequential_1/dense_features/geoCluster_indicator/strided_slice/stack_1:output:0Osequential_1/dense_features/geoCluster_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
@sequential_1/dense_features/geoCluster_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
>sequential_1/dense_features/geoCluster_indicator/Reshape/shapePackGsequential_1/dense_features/geoCluster_indicator/strided_slice:output:0Isequential_1/dense_features/geoCluster_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
8sequential_1/dense_features/geoCluster_indicator/ReshapeReshape=sequential_1/dense_features/geoCluster_indicator/Sum:output:0Gsequential_1/dense_features/geoCluster_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????{
0sequential_1/dense_features/price/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,sequential_1/dense_features/price/ExpandDims
ExpandDimsprice9sequential_1/dense_features/price/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
'sequential_1/dense_features/price/ShapeShape5sequential_1/dense_features/price/ExpandDims:output:0*
T0*
_output_shapes
:
5sequential_1/dense_features/price/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7sequential_1/dense_features/price/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_1/dense_features/price/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/sequential_1/dense_features/price/strided_sliceStridedSlice0sequential_1/dense_features/price/Shape:output:0>sequential_1/dense_features/price/strided_slice/stack:output:0@sequential_1/dense_features/price/strided_slice/stack_1:output:0@sequential_1/dense_features/price/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1sequential_1/dense_features/price/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
/sequential_1/dense_features/price/Reshape/shapePack8sequential_1/dense_features/price/strided_slice:output:0:sequential_1/dense_features/price/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)sequential_1/dense_features/price/ReshapeReshape5sequential_1/dense_features/price/ExpandDims:output:08sequential_1/dense_features/price/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'sequential_1/dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"sequential_1/dense_features/concatConcatV2?sequential_1/dense_features/Category_indicator/Reshape:output:0<sequential_1/dense_features/Group_indicator/Reshape:output:0:sequential_1/dense_features/SKU_indicator/Reshape:output:0=sequential_1/dense_features/cityId_indicator/Reshape:output:0Fsequential_1/dense_features/countryOfOrigin_indicator/Reshape:output:0Asequential_1/dense_features/geoCluster_indicator/Reshape:output:02sequential_1/dense_features/price/Reshape:output:00sequential_1/dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
*sequential_1/Hidden1/MatMul/ReadVariableOpReadVariableOp3sequential_1_hidden1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_1/Hidden1/MatMulMatMul+sequential_1/dense_features/concat:output:02sequential_1/Hidden1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_1/Hidden1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_hidden1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/Hidden1/BiasAddBiasAdd%sequential_1/Hidden1/MatMul:product:03sequential_1/Hidden1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
sequential_1/Hidden1/ReluRelu%sequential_1/Hidden1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
*sequential_1/Hidden2/MatMul/ReadVariableOpReadVariableOp3sequential_1_hidden2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_1/Hidden2/MatMulMatMul'sequential_1/Hidden1/Relu:activations:02sequential_1/Hidden2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_1/Hidden2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_hidden2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/Hidden2/BiasAddBiasAdd%sequential_1/Hidden2/MatMul:product:03sequential_1/Hidden2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
sequential_1/Hidden2/ReluRelu%sequential_1/Hidden2/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
)sequential_1/Output/MatMul/ReadVariableOpReadVariableOp2sequential_1_output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_1/Output/MatMulMatMul'sequential_1/Hidden2/Relu:activations:01sequential_1/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
*sequential_1/Output/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/Output/BiasAddBiasAdd$sequential_1/Output/MatMul:product:02sequential_1/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????s
IdentityIdentity$sequential_1/Output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^sequential_1/Hidden1/BiasAdd/ReadVariableOp+^sequential_1/Hidden1/MatMul/ReadVariableOp,^sequential_1/Hidden2/BiasAdd/ReadVariableOp+^sequential_1/Hidden2/MatMul/ReadVariableOp+^sequential_1/Output/BiasAdd/ReadVariableOp*^sequential_1/Output/MatMul/ReadVariableOpS^sequential_1/dense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2P^sequential_1/dense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2N^sequential_1/dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2Q^sequential_1/dense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2Z^sequential_1/dense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2U^sequential_1/dense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2Z
+sequential_1/Hidden1/BiasAdd/ReadVariableOp+sequential_1/Hidden1/BiasAdd/ReadVariableOp2X
*sequential_1/Hidden1/MatMul/ReadVariableOp*sequential_1/Hidden1/MatMul/ReadVariableOp2Z
+sequential_1/Hidden2/BiasAdd/ReadVariableOp+sequential_1/Hidden2/BiasAdd/ReadVariableOp2X
*sequential_1/Hidden2/MatMul/ReadVariableOp*sequential_1/Hidden2/MatMul/ReadVariableOp2X
*sequential_1/Output/BiasAdd/ReadVariableOp*sequential_1/Output/BiasAdd/ReadVariableOp2V
)sequential_1/Output/MatMul/ReadVariableOp)sequential_1/Output/MatMul/ReadVariableOp2?
Rsequential_1/dense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2Rsequential_1/dense_features/Category_indicator/hash_table_Lookup/LookupTableFindV22?
Osequential_1/dense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2Osequential_1/dense_features/Group_indicator/hash_table_Lookup/LookupTableFindV22?
Msequential_1/dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2Msequential_1/dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV22?
Psequential_1/dense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2Psequential_1/dense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV22?
Ysequential_1/dense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2Ysequential_1/dense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV22?
Tsequential_1/dense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2Tsequential_1/dense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2:M I
#
_output_shapes
:?????????
"
_user_specified_name
Category:JF
#
_output_shapes
:?????????

_user_specified_nameGroup:HD
#
_output_shapes
:?????????

_user_specified_nameSKU:KG
#
_output_shapes
:?????????
 
_user_specified_namecityId:TP
#
_output_shapes
:?????????
)
_user_specified_namecountryOfOrigin:IE
#
_output_shapes
:?????????

_user_specified_namedate:OK
#
_output_shapes
:?????????
$
_user_specified_name
geoCluster:JF
#
_output_shapes
:?????????

_user_specified_nameprice:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
;
__inference__creator_258237
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name238*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
-
__inference__destroyer_258304
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
C__inference_Hidden1_layer_call_and_return_conditional_losses_256479

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_256817
features

features_1

features_2	

features_3	

features_4	

features_5

features_6	

features_7G
Ccategory_indicator_hash_table_lookup_lookuptablefindv2_table_handleH
Dcategory_indicator_hash_table_lookup_lookuptablefindv2_default_value	D
@group_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Agroup_indicator_hash_table_lookup_lookuptablefindv2_default_value	B
>sku_indicator_hash_table_lookup_lookuptablefindv2_table_handleC
?sku_indicator_hash_table_lookup_lookuptablefindv2_default_value	E
Acityid_indicator_hash_table_lookup_lookuptablefindv2_table_handleF
Bcityid_indicator_hash_table_lookup_lookuptablefindv2_default_value	N
Jcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handleO
Kcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value	I
Egeocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handleJ
Fgeocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value	
identity??6Category_indicator/hash_table_Lookup/LookupTableFindV2?3Group_indicator/hash_table_Lookup/LookupTableFindV2?1SKU_indicator/hash_table_Lookup/LookupTableFindV2?4cityId_indicator/hash_table_Lookup/LookupTableFindV2?=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2?8geoCluster_indicator/hash_table_Lookup/LookupTableFindV2l
!Category_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Category_indicator/ExpandDims
ExpandDimsfeatures*Category_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
1Category_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
+Category_indicator/to_sparse_input/NotEqualNotEqual&Category_indicator/ExpandDims:output:0:Category_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
*Category_indicator/to_sparse_input/indicesWhere/Category_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
)Category_indicator/to_sparse_input/valuesGatherNd&Category_indicator/ExpandDims:output:02Category_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
.Category_indicator/to_sparse_input/dense_shapeShape&Category_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
6Category_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ccategory_indicator_hash_table_lookup_lookuptablefindv2_table_handle2Category_indicator/to_sparse_input/values:output:0Dcategory_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????y
.Category_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
 Category_indicator/SparseToDenseSparseToDense2Category_indicator/to_sparse_input/indices:index:07Category_indicator/to_sparse_input/dense_shape:output:0?Category_indicator/hash_table_Lookup/LookupTableFindV2:values:07Category_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????e
 Category_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??g
"Category_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    b
 Category_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :'?
Category_indicator/one_hotOneHot(Category_indicator/SparseToDense:dense:0)Category_indicator/one_hot/depth:output:0)Category_indicator/one_hot/Const:output:0+Category_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????'{
(Category_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Category_indicator/SumSum#Category_indicator/one_hot:output:01Category_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????'g
Category_indicator/ShapeShapeCategory_indicator/Sum:output:0*
T0*
_output_shapes
:p
&Category_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(Category_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(Category_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 Category_indicator/strided_sliceStridedSlice!Category_indicator/Shape:output:0/Category_indicator/strided_slice/stack:output:01Category_indicator/strided_slice/stack_1:output:01Category_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"Category_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :'?
 Category_indicator/Reshape/shapePack)Category_indicator/strided_slice:output:0+Category_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Category_indicator/ReshapeReshapeCategory_indicator/Sum:output:0)Category_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????'i
Group_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Group_indicator/ExpandDims
ExpandDims
features_1'Group_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.Group_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(Group_indicator/to_sparse_input/NotEqualNotEqual#Group_indicator/ExpandDims:output:07Group_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'Group_indicator/to_sparse_input/indicesWhere,Group_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&Group_indicator/to_sparse_input/valuesGatherNd#Group_indicator/ExpandDims:output:0/Group_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+Group_indicator/to_sparse_input/dense_shapeShape#Group_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3Group_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@group_indicator_hash_table_lookup_lookuptablefindv2_table_handle/Group_indicator/to_sparse_input/values:output:0Agroup_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+Group_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Group_indicator/SparseToDenseSparseToDense/Group_indicator/to_sparse_input/indices:index:04Group_indicator/to_sparse_input/dense_shape:output:0<Group_indicator/hash_table_Lookup/LookupTableFindV2:values:04Group_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
Group_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
Group_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Group_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Group_indicator/one_hotOneHot%Group_indicator/SparseToDense:dense:0&Group_indicator/one_hot/depth:output:0&Group_indicator/one_hot/Const:output:0(Group_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????x
%Group_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Group_indicator/SumSum Group_indicator/one_hot:output:0.Group_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????a
Group_indicator/ShapeShapeGroup_indicator/Sum:output:0*
T0*
_output_shapes
:m
#Group_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Group_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Group_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Group_indicator/strided_sliceStridedSliceGroup_indicator/Shape:output:0,Group_indicator/strided_slice/stack:output:0.Group_indicator/strided_slice/stack_1:output:0.Group_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Group_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Group_indicator/Reshape/shapePack&Group_indicator/strided_slice:output:0(Group_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Group_indicator/ReshapeReshapeGroup_indicator/Sum:output:0&Group_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
SKU_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
SKU_indicator/ExpandDims
ExpandDims
features_2%SKU_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????w
,SKU_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*SKU_indicator/to_sparse_input/ignore_valueCast5SKU_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
&SKU_indicator/to_sparse_input/NotEqualNotEqual!SKU_indicator/ExpandDims:output:0.SKU_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
%SKU_indicator/to_sparse_input/indicesWhere*SKU_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
$SKU_indicator/to_sparse_input/valuesGatherNd!SKU_indicator/ExpandDims:output:0-SKU_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
)SKU_indicator/to_sparse_input/dense_shapeShape!SKU_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
1SKU_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2>sku_indicator_hash_table_lookup_lookuptablefindv2_table_handle-SKU_indicator/to_sparse_input/values:output:0?sku_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????t
)SKU_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
SKU_indicator/SparseToDenseSparseToDense-SKU_indicator/to_sparse_input/indices:index:02SKU_indicator/to_sparse_input/dense_shape:output:0:SKU_indicator/hash_table_Lookup/LookupTableFindV2:values:02SKU_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????`
SKU_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??b
SKU_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ]
SKU_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :<?
SKU_indicator/one_hotOneHot#SKU_indicator/SparseToDense:dense:0$SKU_indicator/one_hot/depth:output:0$SKU_indicator/one_hot/Const:output:0&SKU_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????<v
#SKU_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
SKU_indicator/SumSumSKU_indicator/one_hot:output:0,SKU_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????<]
SKU_indicator/ShapeShapeSKU_indicator/Sum:output:0*
T0*
_output_shapes
:k
!SKU_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#SKU_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#SKU_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
SKU_indicator/strided_sliceStridedSliceSKU_indicator/Shape:output:0*SKU_indicator/strided_slice/stack:output:0,SKU_indicator/strided_slice/stack_1:output:0,SKU_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
SKU_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :<?
SKU_indicator/Reshape/shapePack$SKU_indicator/strided_slice:output:0&SKU_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
SKU_indicator/ReshapeReshapeSKU_indicator/Sum:output:0$SKU_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????<j
cityId_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
cityId_indicator/ExpandDims
ExpandDims
features_3(cityId_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????z
/cityId_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-cityId_indicator/to_sparse_input/ignore_valueCast8cityId_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
)cityId_indicator/to_sparse_input/NotEqualNotEqual$cityId_indicator/ExpandDims:output:01cityId_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
(cityId_indicator/to_sparse_input/indicesWhere-cityId_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'cityId_indicator/to_sparse_input/valuesGatherNd$cityId_indicator/ExpandDims:output:00cityId_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
,cityId_indicator/to_sparse_input/dense_shapeShape$cityId_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
4cityId_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Acityid_indicator_hash_table_lookup_lookuptablefindv2_table_handle0cityId_indicator/to_sparse_input/values:output:0Bcityid_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????w
,cityId_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
cityId_indicator/SparseToDenseSparseToDense0cityId_indicator/to_sparse_input/indices:index:05cityId_indicator/to_sparse_input/dense_shape:output:0=cityId_indicator/hash_table_Lookup/LookupTableFindV2:values:05cityId_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
cityId_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 cityId_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
cityId_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
cityId_indicator/one_hotOneHot&cityId_indicator/SparseToDense:dense:0'cityId_indicator/one_hot/depth:output:0'cityId_indicator/one_hot/Const:output:0)cityId_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&cityId_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
cityId_indicator/SumSum!cityId_indicator/one_hot:output:0/cityId_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
cityId_indicator/ShapeShapecityId_indicator/Sum:output:0*
T0*
_output_shapes
:n
$cityId_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&cityId_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&cityId_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
cityId_indicator/strided_sliceStridedSlicecityId_indicator/Shape:output:0-cityId_indicator/strided_slice/stack:output:0/cityId_indicator/strided_slice/stack_1:output:0/cityId_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 cityId_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
cityId_indicator/Reshape/shapePack'cityId_indicator/strided_slice:output:0)cityId_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
cityId_indicator/ReshapeReshapecityId_indicator/Sum:output:0'cityId_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(countryOfOrigin_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$countryOfOrigin_indicator/ExpandDims
ExpandDims
features_41countryOfOrigin_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
8countryOfOrigin_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6countryOfOrigin_indicator/to_sparse_input/ignore_valueCastAcountryOfOrigin_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
2countryOfOrigin_indicator/to_sparse_input/NotEqualNotEqual-countryOfOrigin_indicator/ExpandDims:output:0:countryOfOrigin_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
1countryOfOrigin_indicator/to_sparse_input/indicesWhere6countryOfOrigin_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
0countryOfOrigin_indicator/to_sparse_input/valuesGatherNd-countryOfOrigin_indicator/ExpandDims:output:09countryOfOrigin_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
5countryOfOrigin_indicator/to_sparse_input/dense_shapeShape-countryOfOrigin_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Jcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handle9countryOfOrigin_indicator/to_sparse_input/values:output:0Kcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
5countryOfOrigin_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
'countryOfOrigin_indicator/SparseToDenseSparseToDense9countryOfOrigin_indicator/to_sparse_input/indices:index:0>countryOfOrigin_indicator/to_sparse_input/dense_shape:output:0FcountryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2:values:0>countryOfOrigin_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????l
'countryOfOrigin_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??n
)countryOfOrigin_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
'countryOfOrigin_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
!countryOfOrigin_indicator/one_hotOneHot/countryOfOrigin_indicator/SparseToDense:dense:00countryOfOrigin_indicator/one_hot/depth:output:00countryOfOrigin_indicator/one_hot/Const:output:02countryOfOrigin_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
/countryOfOrigin_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
countryOfOrigin_indicator/SumSum*countryOfOrigin_indicator/one_hot:output:08countryOfOrigin_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????u
countryOfOrigin_indicator/ShapeShape&countryOfOrigin_indicator/Sum:output:0*
T0*
_output_shapes
:w
-countryOfOrigin_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/countryOfOrigin_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/countryOfOrigin_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'countryOfOrigin_indicator/strided_sliceStridedSlice(countryOfOrigin_indicator/Shape:output:06countryOfOrigin_indicator/strided_slice/stack:output:08countryOfOrigin_indicator/strided_slice/stack_1:output:08countryOfOrigin_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)countryOfOrigin_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'countryOfOrigin_indicator/Reshape/shapePack0countryOfOrigin_indicator/strided_slice:output:02countryOfOrigin_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!countryOfOrigin_indicator/ReshapeReshape&countryOfOrigin_indicator/Sum:output:00countryOfOrigin_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#geoCluster_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
geoCluster_indicator/ExpandDims
ExpandDims
features_6,geoCluster_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????~
3geoCluster_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1geoCluster_indicator/to_sparse_input/ignore_valueCast<geoCluster_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
-geoCluster_indicator/to_sparse_input/NotEqualNotEqual(geoCluster_indicator/ExpandDims:output:05geoCluster_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
,geoCluster_indicator/to_sparse_input/indicesWhere1geoCluster_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
+geoCluster_indicator/to_sparse_input/valuesGatherNd(geoCluster_indicator/ExpandDims:output:04geoCluster_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
0geoCluster_indicator/to_sparse_input/dense_shapeShape(geoCluster_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
8geoCluster_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Egeocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handle4geoCluster_indicator/to_sparse_input/values:output:0Fgeocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????{
0geoCluster_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
"geoCluster_indicator/SparseToDenseSparseToDense4geoCluster_indicator/to_sparse_input/indices:index:09geoCluster_indicator/to_sparse_input/dense_shape:output:0AgeoCluster_indicator/hash_table_Lookup/LookupTableFindV2:values:09geoCluster_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????g
"geoCluster_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
$geoCluster_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    e
"geoCluster_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
geoCluster_indicator/one_hotOneHot*geoCluster_indicator/SparseToDense:dense:0+geoCluster_indicator/one_hot/depth:output:0+geoCluster_indicator/one_hot/Const:output:0-geoCluster_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????}
*geoCluster_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
geoCluster_indicator/SumSum%geoCluster_indicator/one_hot:output:03geoCluster_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????k
geoCluster_indicator/ShapeShape!geoCluster_indicator/Sum:output:0*
T0*
_output_shapes
:r
(geoCluster_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*geoCluster_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*geoCluster_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"geoCluster_indicator/strided_sliceStridedSlice#geoCluster_indicator/Shape:output:01geoCluster_indicator/strided_slice/stack:output:03geoCluster_indicator/strided_slice/stack_1:output:03geoCluster_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$geoCluster_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
"geoCluster_indicator/Reshape/shapePack+geoCluster_indicator/strided_slice:output:0-geoCluster_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
geoCluster_indicator/ReshapeReshape!geoCluster_indicator/Sum:output:0+geoCluster_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????_
price/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????{
price/ExpandDims
ExpandDims
features_7price/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????T
price/ShapeShapeprice/ExpandDims:output:0*
T0*
_output_shapes
:c
price/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
price/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
price/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
price/strided_sliceStridedSliceprice/Shape:output:0"price/strided_slice/stack:output:0$price/strided_slice/stack_1:output:0$price/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
price/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
price/Reshape/shapePackprice/strided_slice:output:0price/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
price/ReshapeReshapeprice/ExpandDims:output:0price/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2#Category_indicator/Reshape:output:0 Group_indicator/Reshape:output:0SKU_indicator/Reshape:output:0!cityId_indicator/Reshape:output:0*countryOfOrigin_indicator/Reshape:output:0%geoCluster_indicator/Reshape:output:0price/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp7^Category_indicator/hash_table_Lookup/LookupTableFindV24^Group_indicator/hash_table_Lookup/LookupTableFindV22^SKU_indicator/hash_table_Lookup/LookupTableFindV25^cityId_indicator/hash_table_Lookup/LookupTableFindV2>^countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV29^geoCluster_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2p
6Category_indicator/hash_table_Lookup/LookupTableFindV26Category_indicator/hash_table_Lookup/LookupTableFindV22j
3Group_indicator/hash_table_Lookup/LookupTableFindV23Group_indicator/hash_table_Lookup/LookupTableFindV22f
1SKU_indicator/hash_table_Lookup/LookupTableFindV21SKU_indicator/hash_table_Lookup/LookupTableFindV22l
4cityId_indicator/hash_table_Lookup/LookupTableFindV24cityId_indicator/hash_table_Lookup/LookupTableFindV22~
=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV22t
8geoCluster_indicator/hash_table_Lookup/LookupTableFindV28geoCluster_indicator/hash_table_Lookup/LookupTableFindV2:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?o
?
"__inference__traced_restore_258584
file_prefix?
,assignvariableop_sequential_1_hidden1_kernel:	?:
,assignvariableop_1_sequential_1_hidden1_bias:@
.assignvariableop_2_sequential_1_hidden2_kernel::
,assignvariableop_3_sequential_1_hidden2_bias:?
-assignvariableop_4_sequential_1_output_kernel:9
+assignvariableop_5_sequential_1_output_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: I
6assignvariableop_15_adam_sequential_1_hidden1_kernel_m:	?B
4assignvariableop_16_adam_sequential_1_hidden1_bias_m:H
6assignvariableop_17_adam_sequential_1_hidden2_kernel_m:B
4assignvariableop_18_adam_sequential_1_hidden2_bias_m:G
5assignvariableop_19_adam_sequential_1_output_kernel_m:A
3assignvariableop_20_adam_sequential_1_output_bias_m:I
6assignvariableop_21_adam_sequential_1_hidden1_kernel_v:	?B
4assignvariableop_22_adam_sequential_1_hidden1_bias_v:H
6assignvariableop_23_adam_sequential_1_hidden2_kernel_v:B
4assignvariableop_24_adam_sequential_1_hidden2_bias_v:G
5assignvariableop_25_adam_sequential_1_output_kernel_v:A
3assignvariableop_26_adam_sequential_1_output_bias_v:
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp,assignvariableop_sequential_1_hidden1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp,assignvariableop_1_sequential_1_hidden1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_sequential_1_hidden2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp,assignvariableop_3_sequential_1_hidden2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp-assignvariableop_4_sequential_1_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp+assignvariableop_5_sequential_1_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp6assignvariableop_15_adam_sequential_1_hidden1_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_sequential_1_hidden1_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adam_sequential_1_hidden2_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_sequential_1_hidden2_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp5assignvariableop_19_adam_sequential_1_output_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp3assignvariableop_20_adam_sequential_1_output_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_sequential_1_hidden1_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_sequential_1_hidden1_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_sequential_1_hidden2_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_sequential_1_hidden2_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp5assignvariableop_25_adam_sequential_1_output_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp3assignvariableop_26_adam_sequential_1_output_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
;
__inference__creator_258255
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name276*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_256442
features

features_1

features_2	

features_3	

features_4	

features_5

features_6	

features_7G
Ccategory_indicator_hash_table_lookup_lookuptablefindv2_table_handleH
Dcategory_indicator_hash_table_lookup_lookuptablefindv2_default_value	D
@group_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Agroup_indicator_hash_table_lookup_lookuptablefindv2_default_value	B
>sku_indicator_hash_table_lookup_lookuptablefindv2_table_handleC
?sku_indicator_hash_table_lookup_lookuptablefindv2_default_value	E
Acityid_indicator_hash_table_lookup_lookuptablefindv2_table_handleF
Bcityid_indicator_hash_table_lookup_lookuptablefindv2_default_value	N
Jcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handleO
Kcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value	I
Egeocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handleJ
Fgeocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value	
identity??6Category_indicator/hash_table_Lookup/LookupTableFindV2?3Group_indicator/hash_table_Lookup/LookupTableFindV2?1SKU_indicator/hash_table_Lookup/LookupTableFindV2?4cityId_indicator/hash_table_Lookup/LookupTableFindV2?=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2?8geoCluster_indicator/hash_table_Lookup/LookupTableFindV2l
!Category_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Category_indicator/ExpandDims
ExpandDimsfeatures*Category_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
1Category_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
+Category_indicator/to_sparse_input/NotEqualNotEqual&Category_indicator/ExpandDims:output:0:Category_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
*Category_indicator/to_sparse_input/indicesWhere/Category_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
)Category_indicator/to_sparse_input/valuesGatherNd&Category_indicator/ExpandDims:output:02Category_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
.Category_indicator/to_sparse_input/dense_shapeShape&Category_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
6Category_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ccategory_indicator_hash_table_lookup_lookuptablefindv2_table_handle2Category_indicator/to_sparse_input/values:output:0Dcategory_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????y
.Category_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
 Category_indicator/SparseToDenseSparseToDense2Category_indicator/to_sparse_input/indices:index:07Category_indicator/to_sparse_input/dense_shape:output:0?Category_indicator/hash_table_Lookup/LookupTableFindV2:values:07Category_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????e
 Category_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??g
"Category_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    b
 Category_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :'?
Category_indicator/one_hotOneHot(Category_indicator/SparseToDense:dense:0)Category_indicator/one_hot/depth:output:0)Category_indicator/one_hot/Const:output:0+Category_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????'{
(Category_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Category_indicator/SumSum#Category_indicator/one_hot:output:01Category_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????'g
Category_indicator/ShapeShapeCategory_indicator/Sum:output:0*
T0*
_output_shapes
:p
&Category_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(Category_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(Category_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 Category_indicator/strided_sliceStridedSlice!Category_indicator/Shape:output:0/Category_indicator/strided_slice/stack:output:01Category_indicator/strided_slice/stack_1:output:01Category_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"Category_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :'?
 Category_indicator/Reshape/shapePack)Category_indicator/strided_slice:output:0+Category_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Category_indicator/ReshapeReshapeCategory_indicator/Sum:output:0)Category_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????'i
Group_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Group_indicator/ExpandDims
ExpandDims
features_1'Group_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.Group_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(Group_indicator/to_sparse_input/NotEqualNotEqual#Group_indicator/ExpandDims:output:07Group_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'Group_indicator/to_sparse_input/indicesWhere,Group_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&Group_indicator/to_sparse_input/valuesGatherNd#Group_indicator/ExpandDims:output:0/Group_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+Group_indicator/to_sparse_input/dense_shapeShape#Group_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3Group_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@group_indicator_hash_table_lookup_lookuptablefindv2_table_handle/Group_indicator/to_sparse_input/values:output:0Agroup_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+Group_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Group_indicator/SparseToDenseSparseToDense/Group_indicator/to_sparse_input/indices:index:04Group_indicator/to_sparse_input/dense_shape:output:0<Group_indicator/hash_table_Lookup/LookupTableFindV2:values:04Group_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
Group_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
Group_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Group_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Group_indicator/one_hotOneHot%Group_indicator/SparseToDense:dense:0&Group_indicator/one_hot/depth:output:0&Group_indicator/one_hot/Const:output:0(Group_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????x
%Group_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Group_indicator/SumSum Group_indicator/one_hot:output:0.Group_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????a
Group_indicator/ShapeShapeGroup_indicator/Sum:output:0*
T0*
_output_shapes
:m
#Group_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Group_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Group_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Group_indicator/strided_sliceStridedSliceGroup_indicator/Shape:output:0,Group_indicator/strided_slice/stack:output:0.Group_indicator/strided_slice/stack_1:output:0.Group_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Group_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Group_indicator/Reshape/shapePack&Group_indicator/strided_slice:output:0(Group_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Group_indicator/ReshapeReshapeGroup_indicator/Sum:output:0&Group_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
SKU_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
SKU_indicator/ExpandDims
ExpandDims
features_2%SKU_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????w
,SKU_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*SKU_indicator/to_sparse_input/ignore_valueCast5SKU_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
&SKU_indicator/to_sparse_input/NotEqualNotEqual!SKU_indicator/ExpandDims:output:0.SKU_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
%SKU_indicator/to_sparse_input/indicesWhere*SKU_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
$SKU_indicator/to_sparse_input/valuesGatherNd!SKU_indicator/ExpandDims:output:0-SKU_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
)SKU_indicator/to_sparse_input/dense_shapeShape!SKU_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
1SKU_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2>sku_indicator_hash_table_lookup_lookuptablefindv2_table_handle-SKU_indicator/to_sparse_input/values:output:0?sku_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????t
)SKU_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
SKU_indicator/SparseToDenseSparseToDense-SKU_indicator/to_sparse_input/indices:index:02SKU_indicator/to_sparse_input/dense_shape:output:0:SKU_indicator/hash_table_Lookup/LookupTableFindV2:values:02SKU_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????`
SKU_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??b
SKU_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ]
SKU_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :<?
SKU_indicator/one_hotOneHot#SKU_indicator/SparseToDense:dense:0$SKU_indicator/one_hot/depth:output:0$SKU_indicator/one_hot/Const:output:0&SKU_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????<v
#SKU_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
SKU_indicator/SumSumSKU_indicator/one_hot:output:0,SKU_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????<]
SKU_indicator/ShapeShapeSKU_indicator/Sum:output:0*
T0*
_output_shapes
:k
!SKU_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#SKU_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#SKU_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
SKU_indicator/strided_sliceStridedSliceSKU_indicator/Shape:output:0*SKU_indicator/strided_slice/stack:output:0,SKU_indicator/strided_slice/stack_1:output:0,SKU_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
SKU_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :<?
SKU_indicator/Reshape/shapePack$SKU_indicator/strided_slice:output:0&SKU_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
SKU_indicator/ReshapeReshapeSKU_indicator/Sum:output:0$SKU_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????<j
cityId_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
cityId_indicator/ExpandDims
ExpandDims
features_3(cityId_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????z
/cityId_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-cityId_indicator/to_sparse_input/ignore_valueCast8cityId_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
)cityId_indicator/to_sparse_input/NotEqualNotEqual$cityId_indicator/ExpandDims:output:01cityId_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
(cityId_indicator/to_sparse_input/indicesWhere-cityId_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'cityId_indicator/to_sparse_input/valuesGatherNd$cityId_indicator/ExpandDims:output:00cityId_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
,cityId_indicator/to_sparse_input/dense_shapeShape$cityId_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
4cityId_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Acityid_indicator_hash_table_lookup_lookuptablefindv2_table_handle0cityId_indicator/to_sparse_input/values:output:0Bcityid_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????w
,cityId_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
cityId_indicator/SparseToDenseSparseToDense0cityId_indicator/to_sparse_input/indices:index:05cityId_indicator/to_sparse_input/dense_shape:output:0=cityId_indicator/hash_table_Lookup/LookupTableFindV2:values:05cityId_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
cityId_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 cityId_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
cityId_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
cityId_indicator/one_hotOneHot&cityId_indicator/SparseToDense:dense:0'cityId_indicator/one_hot/depth:output:0'cityId_indicator/one_hot/Const:output:0)cityId_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&cityId_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
cityId_indicator/SumSum!cityId_indicator/one_hot:output:0/cityId_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
cityId_indicator/ShapeShapecityId_indicator/Sum:output:0*
T0*
_output_shapes
:n
$cityId_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&cityId_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&cityId_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
cityId_indicator/strided_sliceStridedSlicecityId_indicator/Shape:output:0-cityId_indicator/strided_slice/stack:output:0/cityId_indicator/strided_slice/stack_1:output:0/cityId_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 cityId_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
cityId_indicator/Reshape/shapePack'cityId_indicator/strided_slice:output:0)cityId_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
cityId_indicator/ReshapeReshapecityId_indicator/Sum:output:0'cityId_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(countryOfOrigin_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$countryOfOrigin_indicator/ExpandDims
ExpandDims
features_41countryOfOrigin_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
8countryOfOrigin_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6countryOfOrigin_indicator/to_sparse_input/ignore_valueCastAcountryOfOrigin_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
2countryOfOrigin_indicator/to_sparse_input/NotEqualNotEqual-countryOfOrigin_indicator/ExpandDims:output:0:countryOfOrigin_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
1countryOfOrigin_indicator/to_sparse_input/indicesWhere6countryOfOrigin_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
0countryOfOrigin_indicator/to_sparse_input/valuesGatherNd-countryOfOrigin_indicator/ExpandDims:output:09countryOfOrigin_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
5countryOfOrigin_indicator/to_sparse_input/dense_shapeShape-countryOfOrigin_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Jcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handle9countryOfOrigin_indicator/to_sparse_input/values:output:0Kcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
5countryOfOrigin_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
'countryOfOrigin_indicator/SparseToDenseSparseToDense9countryOfOrigin_indicator/to_sparse_input/indices:index:0>countryOfOrigin_indicator/to_sparse_input/dense_shape:output:0FcountryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2:values:0>countryOfOrigin_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????l
'countryOfOrigin_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??n
)countryOfOrigin_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
'countryOfOrigin_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
!countryOfOrigin_indicator/one_hotOneHot/countryOfOrigin_indicator/SparseToDense:dense:00countryOfOrigin_indicator/one_hot/depth:output:00countryOfOrigin_indicator/one_hot/Const:output:02countryOfOrigin_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
/countryOfOrigin_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
countryOfOrigin_indicator/SumSum*countryOfOrigin_indicator/one_hot:output:08countryOfOrigin_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????u
countryOfOrigin_indicator/ShapeShape&countryOfOrigin_indicator/Sum:output:0*
T0*
_output_shapes
:w
-countryOfOrigin_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/countryOfOrigin_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/countryOfOrigin_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'countryOfOrigin_indicator/strided_sliceStridedSlice(countryOfOrigin_indicator/Shape:output:06countryOfOrigin_indicator/strided_slice/stack:output:08countryOfOrigin_indicator/strided_slice/stack_1:output:08countryOfOrigin_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)countryOfOrigin_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'countryOfOrigin_indicator/Reshape/shapePack0countryOfOrigin_indicator/strided_slice:output:02countryOfOrigin_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!countryOfOrigin_indicator/ReshapeReshape&countryOfOrigin_indicator/Sum:output:00countryOfOrigin_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#geoCluster_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
geoCluster_indicator/ExpandDims
ExpandDims
features_6,geoCluster_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????~
3geoCluster_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1geoCluster_indicator/to_sparse_input/ignore_valueCast<geoCluster_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
-geoCluster_indicator/to_sparse_input/NotEqualNotEqual(geoCluster_indicator/ExpandDims:output:05geoCluster_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
,geoCluster_indicator/to_sparse_input/indicesWhere1geoCluster_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
+geoCluster_indicator/to_sparse_input/valuesGatherNd(geoCluster_indicator/ExpandDims:output:04geoCluster_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
0geoCluster_indicator/to_sparse_input/dense_shapeShape(geoCluster_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
8geoCluster_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Egeocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handle4geoCluster_indicator/to_sparse_input/values:output:0Fgeocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????{
0geoCluster_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
"geoCluster_indicator/SparseToDenseSparseToDense4geoCluster_indicator/to_sparse_input/indices:index:09geoCluster_indicator/to_sparse_input/dense_shape:output:0AgeoCluster_indicator/hash_table_Lookup/LookupTableFindV2:values:09geoCluster_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????g
"geoCluster_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
$geoCluster_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    e
"geoCluster_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
geoCluster_indicator/one_hotOneHot*geoCluster_indicator/SparseToDense:dense:0+geoCluster_indicator/one_hot/depth:output:0+geoCluster_indicator/one_hot/Const:output:0-geoCluster_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????}
*geoCluster_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
geoCluster_indicator/SumSum%geoCluster_indicator/one_hot:output:03geoCluster_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????k
geoCluster_indicator/ShapeShape!geoCluster_indicator/Sum:output:0*
T0*
_output_shapes
:r
(geoCluster_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*geoCluster_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*geoCluster_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"geoCluster_indicator/strided_sliceStridedSlice#geoCluster_indicator/Shape:output:01geoCluster_indicator/strided_slice/stack:output:03geoCluster_indicator/strided_slice/stack_1:output:03geoCluster_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$geoCluster_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
"geoCluster_indicator/Reshape/shapePack+geoCluster_indicator/strided_slice:output:0-geoCluster_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
geoCluster_indicator/ReshapeReshape!geoCluster_indicator/Sum:output:0+geoCluster_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????_
price/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????{
price/ExpandDims
ExpandDims
features_7price/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????T
price/ShapeShapeprice/ExpandDims:output:0*
T0*
_output_shapes
:c
price/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
price/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
price/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
price/strided_sliceStridedSliceprice/Shape:output:0"price/strided_slice/stack:output:0$price/strided_slice/stack_1:output:0$price/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
price/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
price/Reshape/shapePackprice/strided_slice:output:0price/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
price/ReshapeReshapeprice/ExpandDims:output:0price/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2#Category_indicator/Reshape:output:0 Group_indicator/Reshape:output:0SKU_indicator/Reshape:output:0!cityId_indicator/Reshape:output:0*countryOfOrigin_indicator/Reshape:output:0%geoCluster_indicator/Reshape:output:0price/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp7^Category_indicator/hash_table_Lookup/LookupTableFindV24^Group_indicator/hash_table_Lookup/LookupTableFindV22^SKU_indicator/hash_table_Lookup/LookupTableFindV25^cityId_indicator/hash_table_Lookup/LookupTableFindV2>^countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV29^geoCluster_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2p
6Category_indicator/hash_table_Lookup/LookupTableFindV26Category_indicator/hash_table_Lookup/LookupTableFindV22j
3Group_indicator/hash_table_Lookup/LookupTableFindV23Group_indicator/hash_table_Lookup/LookupTableFindV22f
1SKU_indicator/hash_table_Lookup/LookupTableFindV21SKU_indicator/hash_table_Lookup/LookupTableFindV22l
4cityId_indicator/hash_table_Lookup/LookupTableFindV24cityId_indicator/hash_table_Lookup/LookupTableFindV22~
=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV22t
8geoCluster_indicator/hash_table_Lookup/LookupTableFindV28geoCluster_indicator/hash_table_Lookup/LookupTableFindV2:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
;
__inference__creator_258291
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name352*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?"
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_256519

inputs
inputs_1
inputs_2	
inputs_3	
inputs_4	
inputs_5
inputs_6	
inputs_7
dense_features_256443
dense_features_256445	
dense_features_256447
dense_features_256449	
dense_features_256451
dense_features_256453	
dense_features_256455
dense_features_256457	
dense_features_256459
dense_features_256461	
dense_features_256463
dense_features_256465	!
hidden1_256480:	?
hidden1_256482: 
hidden2_256497:
hidden2_256499:
output_256513:
output_256515:
identity??Hidden1/StatefulPartitionedCall?Hidden2/StatefulPartitionedCall?Output/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7dense_features_256443dense_features_256445dense_features_256447dense_features_256449dense_features_256451dense_features_256453dense_features_256455dense_features_256457dense_features_256459dense_features_256461dense_features_256463dense_features_256465*
Tin
2										*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_256442?
Hidden1/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0hidden1_256480hidden1_256482*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Hidden1_layer_call_and_return_conditional_losses_256479?
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_256497hidden2_256499*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Hidden2_layer_call_and_return_conditional_losses_256496?
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0output_256513output_256515*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_256512v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall^Output/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
C__inference_Hidden1_layer_call_and_return_conditional_losses_258157

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_dense_features_layer_call_fn_257771
features_category
features_group
features_sku	
features_cityid	
features_countryoforigin	
features_date
features_geocluster	
features_price
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_categoryfeatures_groupfeatures_skufeatures_cityidfeatures_countryoforiginfeatures_datefeatures_geoclusterfeatures_priceunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2										*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_256817p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Category:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/Group:QM
#
_output_shapes
:?????????
&
_user_specified_namefeatures/SKU:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/cityId:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/countryOfOrigin:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/date:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/geoCluster:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/price:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
B__inference_Output_layer_call_and_return_conditional_losses_258196

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_Hidden1_layer_call_fn_258146

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Hidden1_layer_call_and_return_conditional_losses_256479o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_1_layer_call_fn_256558
category	
group
sku	

cityid	
countryoforigin	
date

geocluster		
price
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11:	?

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcategorygroupskucityidcountryoforigindate
geoclusterpriceunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*%
Tin
2										*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_256519o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
Category:JF
#
_output_shapes
:?????????

_user_specified_nameGroup:HD
#
_output_shapes
:?????????

_user_specified_nameSKU:KG
#
_output_shapes
:?????????
 
_user_specified_namecityId:TP
#
_output_shapes
:?????????
)
_user_specified_namecountryOfOrigin:IE
#
_output_shapes
:?????????

_user_specified_namedate:OK
#
_output_shapes
:?????????
$
_user_specified_name
geoCluster:JF
#
_output_shapes
:?????????

_user_specified_nameprice:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_1_layer_call_fn_257039
category	
group
sku	

cityid	
countryoforigin	
date

geocluster		
price
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11:	?

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcategorygroupskucityidcountryoforigindate
geoclusterpriceunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*%
Tin
2										*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_256952o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
Category:JF
#
_output_shapes
:?????????

_user_specified_nameGroup:HD
#
_output_shapes
:?????????

_user_specified_nameSKU:KG
#
_output_shapes
:?????????
 
_user_specified_namecityId:TP
#
_output_shapes
:?????????
)
_user_specified_namecountryOfOrigin:IE
#
_output_shapes
:?????????

_user_specified_namedate:OK
#
_output_shapes
:?????????
$
_user_specified_name
geoCluster:JF
#
_output_shapes
:?????????

_user_specified_nameprice:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_2582992
.table_init351_lookuptableimportv2_table_handle*
&table_init351_lookuptableimportv2_keys	,
(table_init351_lookuptableimportv2_values	
identity??!table_init351/LookupTableImportV2?
!table_init351/LookupTableImportV2LookupTableImportV2.table_init351_lookuptableimportv2_table_handle&table_init351_lookuptableimportv2_keys(table_init351_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init351/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init351/LookupTableImportV2!table_init351/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
/__inference_dense_features_layer_call_fn_257735
features_category
features_group
features_sku	
features_cityid	
features_countryoforigin	
features_date
features_geocluster	
features_price
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_categoryfeatures_groupfeatures_skufeatures_cityidfeatures_countryoforiginfeatures_datefeatures_geoclusterfeatures_priceunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2										*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_256442p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Category:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/Group:QM
#
_output_shapes
:?????????
&
_user_specified_namefeatures/SKU:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/cityId:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/countryOfOrigin:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/date:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/geoCluster:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/price:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
B__inference_Output_layer_call_and_return_conditional_losses_256512

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__initializer_2582452
.table_init237_lookuptableimportv2_table_handle*
&table_init237_lookuptableimportv2_keys	,
(table_init237_lookuptableimportv2_values	
identity??!table_init237/LookupTableImportV2?
!table_init237/LookupTableImportV2LookupTableImportV2.table_init237_lookuptableimportv2_table_handle&table_init237_lookuptableimportv2_keys(table_init237_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init237/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :<:<2F
!table_init237/LookupTableImportV2!table_init237/LookupTableImportV2: 

_output_shapes
:<: 

_output_shapes
:<
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_257954
features_category
features_group
features_sku	
features_cityid	
features_countryoforigin	
features_date
features_geocluster	
features_priceG
Ccategory_indicator_hash_table_lookup_lookuptablefindv2_table_handleH
Dcategory_indicator_hash_table_lookup_lookuptablefindv2_default_value	D
@group_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Agroup_indicator_hash_table_lookup_lookuptablefindv2_default_value	B
>sku_indicator_hash_table_lookup_lookuptablefindv2_table_handleC
?sku_indicator_hash_table_lookup_lookuptablefindv2_default_value	E
Acityid_indicator_hash_table_lookup_lookuptablefindv2_table_handleF
Bcityid_indicator_hash_table_lookup_lookuptablefindv2_default_value	N
Jcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handleO
Kcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value	I
Egeocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handleJ
Fgeocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value	
identity??6Category_indicator/hash_table_Lookup/LookupTableFindV2?3Group_indicator/hash_table_Lookup/LookupTableFindV2?1SKU_indicator/hash_table_Lookup/LookupTableFindV2?4cityId_indicator/hash_table_Lookup/LookupTableFindV2?=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2?8geoCluster_indicator/hash_table_Lookup/LookupTableFindV2l
!Category_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Category_indicator/ExpandDims
ExpandDimsfeatures_category*Category_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
1Category_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
+Category_indicator/to_sparse_input/NotEqualNotEqual&Category_indicator/ExpandDims:output:0:Category_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
*Category_indicator/to_sparse_input/indicesWhere/Category_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
)Category_indicator/to_sparse_input/valuesGatherNd&Category_indicator/ExpandDims:output:02Category_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
.Category_indicator/to_sparse_input/dense_shapeShape&Category_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
6Category_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ccategory_indicator_hash_table_lookup_lookuptablefindv2_table_handle2Category_indicator/to_sparse_input/values:output:0Dcategory_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????y
.Category_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
 Category_indicator/SparseToDenseSparseToDense2Category_indicator/to_sparse_input/indices:index:07Category_indicator/to_sparse_input/dense_shape:output:0?Category_indicator/hash_table_Lookup/LookupTableFindV2:values:07Category_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????e
 Category_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??g
"Category_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    b
 Category_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :'?
Category_indicator/one_hotOneHot(Category_indicator/SparseToDense:dense:0)Category_indicator/one_hot/depth:output:0)Category_indicator/one_hot/Const:output:0+Category_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????'{
(Category_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Category_indicator/SumSum#Category_indicator/one_hot:output:01Category_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????'g
Category_indicator/ShapeShapeCategory_indicator/Sum:output:0*
T0*
_output_shapes
:p
&Category_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(Category_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(Category_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 Category_indicator/strided_sliceStridedSlice!Category_indicator/Shape:output:0/Category_indicator/strided_slice/stack:output:01Category_indicator/strided_slice/stack_1:output:01Category_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"Category_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :'?
 Category_indicator/Reshape/shapePack)Category_indicator/strided_slice:output:0+Category_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Category_indicator/ReshapeReshapeCategory_indicator/Sum:output:0)Category_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????'i
Group_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Group_indicator/ExpandDims
ExpandDimsfeatures_group'Group_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.Group_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(Group_indicator/to_sparse_input/NotEqualNotEqual#Group_indicator/ExpandDims:output:07Group_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'Group_indicator/to_sparse_input/indicesWhere,Group_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&Group_indicator/to_sparse_input/valuesGatherNd#Group_indicator/ExpandDims:output:0/Group_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+Group_indicator/to_sparse_input/dense_shapeShape#Group_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3Group_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@group_indicator_hash_table_lookup_lookuptablefindv2_table_handle/Group_indicator/to_sparse_input/values:output:0Agroup_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+Group_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Group_indicator/SparseToDenseSparseToDense/Group_indicator/to_sparse_input/indices:index:04Group_indicator/to_sparse_input/dense_shape:output:0<Group_indicator/hash_table_Lookup/LookupTableFindV2:values:04Group_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
Group_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
Group_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Group_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Group_indicator/one_hotOneHot%Group_indicator/SparseToDense:dense:0&Group_indicator/one_hot/depth:output:0&Group_indicator/one_hot/Const:output:0(Group_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????x
%Group_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Group_indicator/SumSum Group_indicator/one_hot:output:0.Group_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????a
Group_indicator/ShapeShapeGroup_indicator/Sum:output:0*
T0*
_output_shapes
:m
#Group_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Group_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Group_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Group_indicator/strided_sliceStridedSliceGroup_indicator/Shape:output:0,Group_indicator/strided_slice/stack:output:0.Group_indicator/strided_slice/stack_1:output:0.Group_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Group_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Group_indicator/Reshape/shapePack&Group_indicator/strided_slice:output:0(Group_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Group_indicator/ReshapeReshapeGroup_indicator/Sum:output:0&Group_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
SKU_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
SKU_indicator/ExpandDims
ExpandDimsfeatures_sku%SKU_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????w
,SKU_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*SKU_indicator/to_sparse_input/ignore_valueCast5SKU_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
&SKU_indicator/to_sparse_input/NotEqualNotEqual!SKU_indicator/ExpandDims:output:0.SKU_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
%SKU_indicator/to_sparse_input/indicesWhere*SKU_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
$SKU_indicator/to_sparse_input/valuesGatherNd!SKU_indicator/ExpandDims:output:0-SKU_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
)SKU_indicator/to_sparse_input/dense_shapeShape!SKU_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
1SKU_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2>sku_indicator_hash_table_lookup_lookuptablefindv2_table_handle-SKU_indicator/to_sparse_input/values:output:0?sku_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????t
)SKU_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
SKU_indicator/SparseToDenseSparseToDense-SKU_indicator/to_sparse_input/indices:index:02SKU_indicator/to_sparse_input/dense_shape:output:0:SKU_indicator/hash_table_Lookup/LookupTableFindV2:values:02SKU_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????`
SKU_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??b
SKU_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ]
SKU_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :<?
SKU_indicator/one_hotOneHot#SKU_indicator/SparseToDense:dense:0$SKU_indicator/one_hot/depth:output:0$SKU_indicator/one_hot/Const:output:0&SKU_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????<v
#SKU_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
SKU_indicator/SumSumSKU_indicator/one_hot:output:0,SKU_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????<]
SKU_indicator/ShapeShapeSKU_indicator/Sum:output:0*
T0*
_output_shapes
:k
!SKU_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#SKU_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#SKU_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
SKU_indicator/strided_sliceStridedSliceSKU_indicator/Shape:output:0*SKU_indicator/strided_slice/stack:output:0,SKU_indicator/strided_slice/stack_1:output:0,SKU_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
SKU_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :<?
SKU_indicator/Reshape/shapePack$SKU_indicator/strided_slice:output:0&SKU_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
SKU_indicator/ReshapeReshapeSKU_indicator/Sum:output:0$SKU_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????<j
cityId_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
cityId_indicator/ExpandDims
ExpandDimsfeatures_cityid(cityId_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????z
/cityId_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-cityId_indicator/to_sparse_input/ignore_valueCast8cityId_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
)cityId_indicator/to_sparse_input/NotEqualNotEqual$cityId_indicator/ExpandDims:output:01cityId_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
(cityId_indicator/to_sparse_input/indicesWhere-cityId_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'cityId_indicator/to_sparse_input/valuesGatherNd$cityId_indicator/ExpandDims:output:00cityId_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
,cityId_indicator/to_sparse_input/dense_shapeShape$cityId_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
4cityId_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Acityid_indicator_hash_table_lookup_lookuptablefindv2_table_handle0cityId_indicator/to_sparse_input/values:output:0Bcityid_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????w
,cityId_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
cityId_indicator/SparseToDenseSparseToDense0cityId_indicator/to_sparse_input/indices:index:05cityId_indicator/to_sparse_input/dense_shape:output:0=cityId_indicator/hash_table_Lookup/LookupTableFindV2:values:05cityId_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
cityId_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 cityId_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
cityId_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
cityId_indicator/one_hotOneHot&cityId_indicator/SparseToDense:dense:0'cityId_indicator/one_hot/depth:output:0'cityId_indicator/one_hot/Const:output:0)cityId_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&cityId_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
cityId_indicator/SumSum!cityId_indicator/one_hot:output:0/cityId_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
cityId_indicator/ShapeShapecityId_indicator/Sum:output:0*
T0*
_output_shapes
:n
$cityId_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&cityId_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&cityId_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
cityId_indicator/strided_sliceStridedSlicecityId_indicator/Shape:output:0-cityId_indicator/strided_slice/stack:output:0/cityId_indicator/strided_slice/stack_1:output:0/cityId_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 cityId_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
cityId_indicator/Reshape/shapePack'cityId_indicator/strided_slice:output:0)cityId_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
cityId_indicator/ReshapeReshapecityId_indicator/Sum:output:0'cityId_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????s
(countryOfOrigin_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$countryOfOrigin_indicator/ExpandDims
ExpandDimsfeatures_countryoforigin1countryOfOrigin_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
8countryOfOrigin_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6countryOfOrigin_indicator/to_sparse_input/ignore_valueCastAcountryOfOrigin_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
2countryOfOrigin_indicator/to_sparse_input/NotEqualNotEqual-countryOfOrigin_indicator/ExpandDims:output:0:countryOfOrigin_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
1countryOfOrigin_indicator/to_sparse_input/indicesWhere6countryOfOrigin_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
0countryOfOrigin_indicator/to_sparse_input/valuesGatherNd-countryOfOrigin_indicator/ExpandDims:output:09countryOfOrigin_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
5countryOfOrigin_indicator/to_sparse_input/dense_shapeShape-countryOfOrigin_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Jcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handle9countryOfOrigin_indicator/to_sparse_input/values:output:0Kcountryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
5countryOfOrigin_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
'countryOfOrigin_indicator/SparseToDenseSparseToDense9countryOfOrigin_indicator/to_sparse_input/indices:index:0>countryOfOrigin_indicator/to_sparse_input/dense_shape:output:0FcountryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2:values:0>countryOfOrigin_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????l
'countryOfOrigin_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??n
)countryOfOrigin_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
'countryOfOrigin_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
!countryOfOrigin_indicator/one_hotOneHot/countryOfOrigin_indicator/SparseToDense:dense:00countryOfOrigin_indicator/one_hot/depth:output:00countryOfOrigin_indicator/one_hot/Const:output:02countryOfOrigin_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
/countryOfOrigin_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
countryOfOrigin_indicator/SumSum*countryOfOrigin_indicator/one_hot:output:08countryOfOrigin_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????u
countryOfOrigin_indicator/ShapeShape&countryOfOrigin_indicator/Sum:output:0*
T0*
_output_shapes
:w
-countryOfOrigin_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/countryOfOrigin_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/countryOfOrigin_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'countryOfOrigin_indicator/strided_sliceStridedSlice(countryOfOrigin_indicator/Shape:output:06countryOfOrigin_indicator/strided_slice/stack:output:08countryOfOrigin_indicator/strided_slice/stack_1:output:08countryOfOrigin_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)countryOfOrigin_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
'countryOfOrigin_indicator/Reshape/shapePack0countryOfOrigin_indicator/strided_slice:output:02countryOfOrigin_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
!countryOfOrigin_indicator/ReshapeReshape&countryOfOrigin_indicator/Sum:output:00countryOfOrigin_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#geoCluster_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
geoCluster_indicator/ExpandDims
ExpandDimsfeatures_geocluster,geoCluster_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????~
3geoCluster_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1geoCluster_indicator/to_sparse_input/ignore_valueCast<geoCluster_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
-geoCluster_indicator/to_sparse_input/NotEqualNotEqual(geoCluster_indicator/ExpandDims:output:05geoCluster_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
,geoCluster_indicator/to_sparse_input/indicesWhere1geoCluster_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
+geoCluster_indicator/to_sparse_input/valuesGatherNd(geoCluster_indicator/ExpandDims:output:04geoCluster_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
0geoCluster_indicator/to_sparse_input/dense_shapeShape(geoCluster_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
8geoCluster_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Egeocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handle4geoCluster_indicator/to_sparse_input/values:output:0Fgeocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????{
0geoCluster_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
"geoCluster_indicator/SparseToDenseSparseToDense4geoCluster_indicator/to_sparse_input/indices:index:09geoCluster_indicator/to_sparse_input/dense_shape:output:0AgeoCluster_indicator/hash_table_Lookup/LookupTableFindV2:values:09geoCluster_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????g
"geoCluster_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
$geoCluster_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    e
"geoCluster_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
geoCluster_indicator/one_hotOneHot*geoCluster_indicator/SparseToDense:dense:0+geoCluster_indicator/one_hot/depth:output:0+geoCluster_indicator/one_hot/Const:output:0-geoCluster_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????}
*geoCluster_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
geoCluster_indicator/SumSum%geoCluster_indicator/one_hot:output:03geoCluster_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????k
geoCluster_indicator/ShapeShape!geoCluster_indicator/Sum:output:0*
T0*
_output_shapes
:r
(geoCluster_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*geoCluster_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*geoCluster_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"geoCluster_indicator/strided_sliceStridedSlice#geoCluster_indicator/Shape:output:01geoCluster_indicator/strided_slice/stack:output:03geoCluster_indicator/strided_slice/stack_1:output:03geoCluster_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$geoCluster_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
"geoCluster_indicator/Reshape/shapePack+geoCluster_indicator/strided_slice:output:0-geoCluster_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
geoCluster_indicator/ReshapeReshape!geoCluster_indicator/Sum:output:0+geoCluster_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????_
price/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
price/ExpandDims
ExpandDimsfeatures_priceprice/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????T
price/ShapeShapeprice/ExpandDims:output:0*
T0*
_output_shapes
:c
price/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
price/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
price/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
price/strided_sliceStridedSliceprice/Shape:output:0"price/strided_slice/stack:output:0$price/strided_slice/stack_1:output:0$price/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
price/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
price/Reshape/shapePackprice/strided_slice:output:0price/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
price/ReshapeReshapeprice/ExpandDims:output:0price/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2#Category_indicator/Reshape:output:0 Group_indicator/Reshape:output:0SKU_indicator/Reshape:output:0!cityId_indicator/Reshape:output:0*countryOfOrigin_indicator/Reshape:output:0%geoCluster_indicator/Reshape:output:0price/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp7^Category_indicator/hash_table_Lookup/LookupTableFindV24^Group_indicator/hash_table_Lookup/LookupTableFindV22^SKU_indicator/hash_table_Lookup/LookupTableFindV25^cityId_indicator/hash_table_Lookup/LookupTableFindV2>^countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV29^geoCluster_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2p
6Category_indicator/hash_table_Lookup/LookupTableFindV26Category_indicator/hash_table_Lookup/LookupTableFindV22j
3Group_indicator/hash_table_Lookup/LookupTableFindV23Group_indicator/hash_table_Lookup/LookupTableFindV22f
1SKU_indicator/hash_table_Lookup/LookupTableFindV21SKU_indicator/hash_table_Lookup/LookupTableFindV22l
4cityId_indicator/hash_table_Lookup/LookupTableFindV24cityId_indicator/hash_table_Lookup/LookupTableFindV22~
=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2=countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV22t
8geoCluster_indicator/hash_table_Lookup/LookupTableFindV28geoCluster_indicator/hash_table_Lookup/LookupTableFindV2:V R
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Category:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/Group:QM
#
_output_shapes
:?????????
&
_user_specified_namefeatures/SKU:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/cityId:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/countryOfOrigin:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/date:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/geoCluster:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/price:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_257446
inputs_category
inputs_group

inputs_sku	
inputs_cityid	
inputs_countryoforigin	
inputs_date
inputs_geocluster	
inputs_priceV
Rdense_features_category_indicator_hash_table_lookup_lookuptablefindv2_table_handleW
Sdense_features_category_indicator_hash_table_lookup_lookuptablefindv2_default_value	S
Odense_features_group_indicator_hash_table_lookup_lookuptablefindv2_table_handleT
Pdense_features_group_indicator_hash_table_lookup_lookuptablefindv2_default_value	Q
Mdense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_table_handleR
Ndense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_default_value	T
Pdense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_table_handleU
Qdense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_default_value	]
Ydense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handle^
Zdense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value	X
Tdense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handleY
Udense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value	9
&hidden1_matmul_readvariableop_resource:	?5
'hidden1_biasadd_readvariableop_resource:8
&hidden2_matmul_readvariableop_resource:5
'hidden2_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity??Hidden1/BiasAdd/ReadVariableOp?Hidden1/MatMul/ReadVariableOp?Hidden2/BiasAdd/ReadVariableOp?Hidden2/MatMul/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?Edense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2?Bdense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2?@dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2?Cdense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2?Ldense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2?Gdense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2{
0dense_features/Category_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,dense_features/Category_indicator/ExpandDims
ExpandDimsinputs_category9dense_features/Category_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
@dense_features/Category_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
:dense_features/Category_indicator/to_sparse_input/NotEqualNotEqual5dense_features/Category_indicator/ExpandDims:output:0Idense_features/Category_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
9dense_features/Category_indicator/to_sparse_input/indicesWhere>dense_features/Category_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
8dense_features/Category_indicator/to_sparse_input/valuesGatherNd5dense_features/Category_indicator/ExpandDims:output:0Adense_features/Category_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
=dense_features/Category_indicator/to_sparse_input/dense_shapeShape5dense_features/Category_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Edense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Rdense_features_category_indicator_hash_table_lookup_lookuptablefindv2_table_handleAdense_features/Category_indicator/to_sparse_input/values:output:0Sdense_features_category_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
=dense_features/Category_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
/dense_features/Category_indicator/SparseToDenseSparseToDenseAdense_features/Category_indicator/to_sparse_input/indices:index:0Fdense_features/Category_indicator/to_sparse_input/dense_shape:output:0Ndense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2:values:0Fdense_features/Category_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????t
/dense_features/Category_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??v
1dense_features/Category_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    q
/dense_features/Category_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :'?
)dense_features/Category_indicator/one_hotOneHot7dense_features/Category_indicator/SparseToDense:dense:08dense_features/Category_indicator/one_hot/depth:output:08dense_features/Category_indicator/one_hot/Const:output:0:dense_features/Category_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????'?
7dense_features/Category_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
%dense_features/Category_indicator/SumSum2dense_features/Category_indicator/one_hot:output:0@dense_features/Category_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????'?
'dense_features/Category_indicator/ShapeShape.dense_features/Category_indicator/Sum:output:0*
T0*
_output_shapes
:
5dense_features/Category_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7dense_features/Category_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7dense_features/Category_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/dense_features/Category_indicator/strided_sliceStridedSlice0dense_features/Category_indicator/Shape:output:0>dense_features/Category_indicator/strided_slice/stack:output:0@dense_features/Category_indicator/strided_slice/stack_1:output:0@dense_features/Category_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features/Category_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :'?
/dense_features/Category_indicator/Reshape/shapePack8dense_features/Category_indicator/strided_slice:output:0:dense_features/Category_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)dense_features/Category_indicator/ReshapeReshape.dense_features/Category_indicator/Sum:output:08dense_features/Category_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????'x
-dense_features/Group_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/Group_indicator/ExpandDims
ExpandDimsinputs_group6dense_features/Group_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
=dense_features/Group_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
7dense_features/Group_indicator/to_sparse_input/NotEqualNotEqual2dense_features/Group_indicator/ExpandDims:output:0Fdense_features/Group_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
6dense_features/Group_indicator/to_sparse_input/indicesWhere;dense_features/Group_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
5dense_features/Group_indicator/to_sparse_input/valuesGatherNd2dense_features/Group_indicator/ExpandDims:output:0>dense_features/Group_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
:dense_features/Group_indicator/to_sparse_input/dense_shapeShape2dense_features/Group_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Bdense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Odense_features_group_indicator_hash_table_lookup_lookuptablefindv2_table_handle>dense_features/Group_indicator/to_sparse_input/values:output:0Pdense_features_group_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
:dense_features/Group_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
,dense_features/Group_indicator/SparseToDenseSparseToDense>dense_features/Group_indicator/to_sparse_input/indices:index:0Cdense_features/Group_indicator/to_sparse_input/dense_shape:output:0Kdense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2:values:0Cdense_features/Group_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????q
,dense_features/Group_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??s
.dense_features/Group_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    n
,dense_features/Group_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
&dense_features/Group_indicator/one_hotOneHot4dense_features/Group_indicator/SparseToDense:dense:05dense_features/Group_indicator/one_hot/depth:output:05dense_features/Group_indicator/one_hot/Const:output:07dense_features/Group_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
4dense_features/Group_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
"dense_features/Group_indicator/SumSum/dense_features/Group_indicator/one_hot:output:0=dense_features/Group_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????
$dense_features/Group_indicator/ShapeShape+dense_features/Group_indicator/Sum:output:0*
T0*
_output_shapes
:|
2dense_features/Group_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/Group_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/Group_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/Group_indicator/strided_sliceStridedSlice-dense_features/Group_indicator/Shape:output:0;dense_features/Group_indicator/strided_slice/stack:output:0=dense_features/Group_indicator/strided_slice/stack_1:output:0=dense_features/Group_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/Group_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features/Group_indicator/Reshape/shapePack5dense_features/Group_indicator/strided_slice:output:07dense_features/Group_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/Group_indicator/ReshapeReshape+dense_features/Group_indicator/Sum:output:05dense_features/Group_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????v
+dense_features/SKU_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'dense_features/SKU_indicator/ExpandDims
ExpandDims
inputs_sku4dense_features/SKU_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
;dense_features/SKU_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
9dense_features/SKU_indicator/to_sparse_input/ignore_valueCastDdense_features/SKU_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
5dense_features/SKU_indicator/to_sparse_input/NotEqualNotEqual0dense_features/SKU_indicator/ExpandDims:output:0=dense_features/SKU_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
4dense_features/SKU_indicator/to_sparse_input/indicesWhere9dense_features/SKU_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
3dense_features/SKU_indicator/to_sparse_input/valuesGatherNd0dense_features/SKU_indicator/ExpandDims:output:0<dense_features/SKU_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
8dense_features/SKU_indicator/to_sparse_input/dense_shapeShape0dense_features/SKU_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
@dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Mdense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_table_handle<dense_features/SKU_indicator/to_sparse_input/values:output:0Ndense_features_sku_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
8dense_features/SKU_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
*dense_features/SKU_indicator/SparseToDenseSparseToDense<dense_features/SKU_indicator/to_sparse_input/indices:index:0Adense_features/SKU_indicator/to_sparse_input/dense_shape:output:0Idense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2:values:0Adense_features/SKU_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????o
*dense_features/SKU_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??q
,dense_features/SKU_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    l
*dense_features/SKU_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :<?
$dense_features/SKU_indicator/one_hotOneHot2dense_features/SKU_indicator/SparseToDense:dense:03dense_features/SKU_indicator/one_hot/depth:output:03dense_features/SKU_indicator/one_hot/Const:output:05dense_features/SKU_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????<?
2dense_features/SKU_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
 dense_features/SKU_indicator/SumSum-dense_features/SKU_indicator/one_hot:output:0;dense_features/SKU_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????<{
"dense_features/SKU_indicator/ShapeShape)dense_features/SKU_indicator/Sum:output:0*
T0*
_output_shapes
:z
0dense_features/SKU_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_features/SKU_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_features/SKU_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_features/SKU_indicator/strided_sliceStridedSlice+dense_features/SKU_indicator/Shape:output:09dense_features/SKU_indicator/strided_slice/stack:output:0;dense_features/SKU_indicator/strided_slice/stack_1:output:0;dense_features/SKU_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,dense_features/SKU_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :<?
*dense_features/SKU_indicator/Reshape/shapePack3dense_features/SKU_indicator/strided_slice:output:05dense_features/SKU_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
$dense_features/SKU_indicator/ReshapeReshape)dense_features/SKU_indicator/Sum:output:03dense_features/SKU_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????<y
.dense_features/cityId_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/cityId_indicator/ExpandDims
ExpandDimsinputs_cityid7dense_features/cityId_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
>dense_features/cityId_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
<dense_features/cityId_indicator/to_sparse_input/ignore_valueCastGdense_features/cityId_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
8dense_features/cityId_indicator/to_sparse_input/NotEqualNotEqual3dense_features/cityId_indicator/ExpandDims:output:0@dense_features/cityId_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
7dense_features/cityId_indicator/to_sparse_input/indicesWhere<dense_features/cityId_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features/cityId_indicator/to_sparse_input/valuesGatherNd3dense_features/cityId_indicator/ExpandDims:output:0?dense_features/cityId_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
;dense_features/cityId_indicator/to_sparse_input/dense_shapeShape3dense_features/cityId_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Cdense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Pdense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_table_handle?dense_features/cityId_indicator/to_sparse_input/values:output:0Qdense_features_cityid_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
;dense_features/cityId_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
-dense_features/cityId_indicator/SparseToDenseSparseToDense?dense_features/cityId_indicator/to_sparse_input/indices:index:0Ddense_features/cityId_indicator/to_sparse_input/dense_shape:output:0Ldense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2:values:0Ddense_features/cityId_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????r
-dense_features/cityId_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??t
/dense_features/cityId_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    o
-dense_features/cityId_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
'dense_features/cityId_indicator/one_hotOneHot5dense_features/cityId_indicator/SparseToDense:dense:06dense_features/cityId_indicator/one_hot/depth:output:06dense_features/cityId_indicator/one_hot/Const:output:08dense_features/cityId_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
5dense_features/cityId_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
#dense_features/cityId_indicator/SumSum0dense_features/cityId_indicator/one_hot:output:0>dense_features/cityId_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
%dense_features/cityId_indicator/ShapeShape,dense_features/cityId_indicator/Sum:output:0*
T0*
_output_shapes
:}
3dense_features/cityId_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/cityId_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/cityId_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/cityId_indicator/strided_sliceStridedSlice.dense_features/cityId_indicator/Shape:output:0<dense_features/cityId_indicator/strided_slice/stack:output:0>dense_features/cityId_indicator/strided_slice/stack_1:output:0>dense_features/cityId_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features/cityId_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/cityId_indicator/Reshape/shapePack6dense_features/cityId_indicator/strided_slice:output:08dense_features/cityId_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/cityId_indicator/ReshapeReshape,dense_features/cityId_indicator/Sum:output:06dense_features/cityId_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
7dense_features/countryOfOrigin_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
3dense_features/countryOfOrigin_indicator/ExpandDims
ExpandDimsinputs_countryoforigin@dense_features/countryOfOrigin_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
Gdense_features/countryOfOrigin_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Edense_features/countryOfOrigin_indicator/to_sparse_input/ignore_valueCastPdense_features/countryOfOrigin_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
Adense_features/countryOfOrigin_indicator/to_sparse_input/NotEqualNotEqual<dense_features/countryOfOrigin_indicator/ExpandDims:output:0Idense_features/countryOfOrigin_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
@dense_features/countryOfOrigin_indicator/to_sparse_input/indicesWhereEdense_features/countryOfOrigin_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
?dense_features/countryOfOrigin_indicator/to_sparse_input/valuesGatherNd<dense_features/countryOfOrigin_indicator/ExpandDims:output:0Hdense_features/countryOfOrigin_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Ddense_features/countryOfOrigin_indicator/to_sparse_input/dense_shapeShape<dense_features/countryOfOrigin_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Ldense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ydense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_table_handleHdense_features/countryOfOrigin_indicator/to_sparse_input/values:output:0Zdense_features_countryoforigin_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Ddense_features/countryOfOrigin_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
6dense_features/countryOfOrigin_indicator/SparseToDenseSparseToDenseHdense_features/countryOfOrigin_indicator/to_sparse_input/indices:index:0Mdense_features/countryOfOrigin_indicator/to_sparse_input/dense_shape:output:0Udense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2:values:0Mdense_features/countryOfOrigin_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????{
6dense_features/countryOfOrigin_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??}
8dense_features/countryOfOrigin_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    x
6dense_features/countryOfOrigin_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
0dense_features/countryOfOrigin_indicator/one_hotOneHot>dense_features/countryOfOrigin_indicator/SparseToDense:dense:0?dense_features/countryOfOrigin_indicator/one_hot/depth:output:0?dense_features/countryOfOrigin_indicator/one_hot/Const:output:0Adense_features/countryOfOrigin_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
>dense_features/countryOfOrigin_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
,dense_features/countryOfOrigin_indicator/SumSum9dense_features/countryOfOrigin_indicator/one_hot:output:0Gdense_features/countryOfOrigin_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
.dense_features/countryOfOrigin_indicator/ShapeShape5dense_features/countryOfOrigin_indicator/Sum:output:0*
T0*
_output_shapes
:?
<dense_features/countryOfOrigin_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>dense_features/countryOfOrigin_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>dense_features/countryOfOrigin_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6dense_features/countryOfOrigin_indicator/strided_sliceStridedSlice7dense_features/countryOfOrigin_indicator/Shape:output:0Edense_features/countryOfOrigin_indicator/strided_slice/stack:output:0Gdense_features/countryOfOrigin_indicator/strided_slice/stack_1:output:0Gdense_features/countryOfOrigin_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8dense_features/countryOfOrigin_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
6dense_features/countryOfOrigin_indicator/Reshape/shapePack?dense_features/countryOfOrigin_indicator/strided_slice:output:0Adense_features/countryOfOrigin_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
0dense_features/countryOfOrigin_indicator/ReshapeReshape5dense_features/countryOfOrigin_indicator/Sum:output:0?dense_features/countryOfOrigin_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????}
2dense_features/geoCluster_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.dense_features/geoCluster_indicator/ExpandDims
ExpandDimsinputs_geocluster;dense_features/geoCluster_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
Bdense_features/geoCluster_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
@dense_features/geoCluster_indicator/to_sparse_input/ignore_valueCastKdense_features/geoCluster_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
<dense_features/geoCluster_indicator/to_sparse_input/NotEqualNotEqual7dense_features/geoCluster_indicator/ExpandDims:output:0Ddense_features/geoCluster_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
;dense_features/geoCluster_indicator/to_sparse_input/indicesWhere@dense_features/geoCluster_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
:dense_features/geoCluster_indicator/to_sparse_input/valuesGatherNd7dense_features/geoCluster_indicator/ExpandDims:output:0Cdense_features/geoCluster_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
?dense_features/geoCluster_indicator/to_sparse_input/dense_shapeShape7dense_features/geoCluster_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Gdense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Tdense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_table_handleCdense_features/geoCluster_indicator/to_sparse_input/values:output:0Udense_features_geocluster_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
?dense_features/geoCluster_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
1dense_features/geoCluster_indicator/SparseToDenseSparseToDenseCdense_features/geoCluster_indicator/to_sparse_input/indices:index:0Hdense_features/geoCluster_indicator/to_sparse_input/dense_shape:output:0Pdense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2:values:0Hdense_features/geoCluster_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????v
1dense_features/geoCluster_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??x
3dense_features/geoCluster_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    t
1dense_features/geoCluster_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
+dense_features/geoCluster_indicator/one_hotOneHot9dense_features/geoCluster_indicator/SparseToDense:dense:0:dense_features/geoCluster_indicator/one_hot/depth:output:0:dense_features/geoCluster_indicator/one_hot/Const:output:0<dense_features/geoCluster_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
9dense_features/geoCluster_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
'dense_features/geoCluster_indicator/SumSum4dense_features/geoCluster_indicator/one_hot:output:0Bdense_features/geoCluster_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
)dense_features/geoCluster_indicator/ShapeShape0dense_features/geoCluster_indicator/Sum:output:0*
T0*
_output_shapes
:?
7dense_features/geoCluster_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9dense_features/geoCluster_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9dense_features/geoCluster_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1dense_features/geoCluster_indicator/strided_sliceStridedSlice2dense_features/geoCluster_indicator/Shape:output:0@dense_features/geoCluster_indicator/strided_slice/stack:output:0Bdense_features/geoCluster_indicator/strided_slice/stack_1:output:0Bdense_features/geoCluster_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
3dense_features/geoCluster_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
1dense_features/geoCluster_indicator/Reshape/shapePack:dense_features/geoCluster_indicator/strided_slice:output:0<dense_features/geoCluster_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
+dense_features/geoCluster_indicator/ReshapeReshape0dense_features/geoCluster_indicator/Sum:output:0:dense_features/geoCluster_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????n
#dense_features/price/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/price/ExpandDims
ExpandDimsinputs_price,dense_features/price/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
dense_features/price/ShapeShape(dense_features/price/ExpandDims:output:0*
T0*
_output_shapes
:r
(dense_features/price/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*dense_features/price/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*dense_features/price/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"dense_features/price/strided_sliceStridedSlice#dense_features/price/Shape:output:01dense_features/price/strided_slice/stack:output:03dense_features/price/strided_slice/stack_1:output:03dense_features/price/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$dense_features/price/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
"dense_features/price/Reshape/shapePack+dense_features/price/strided_slice:output:0-dense_features/price/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/price/ReshapeReshape(dense_features/price/ExpandDims:output:0+dense_features/price/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/concatConcatV22dense_features/Category_indicator/Reshape:output:0/dense_features/Group_indicator/Reshape:output:0-dense_features/SKU_indicator/Reshape:output:00dense_features/cityId_indicator/Reshape:output:09dense_features/countryOfOrigin_indicator/Reshape:output:04dense_features/geoCluster_indicator/Reshape:output:0%dense_features/price/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
Hidden1/MatMul/ReadVariableOpReadVariableOp&hidden1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
Hidden1/MatMulMatMuldense_features/concat:output:0%Hidden1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Hidden1/BiasAdd/ReadVariableOpReadVariableOp'hidden1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Hidden1/BiasAddBiasAddHidden1/MatMul:product:0&Hidden1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
Hidden1/ReluReluHidden1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
Hidden2/MatMul/ReadVariableOpReadVariableOp&hidden2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
Hidden2/MatMulMatMulHidden1/Relu:activations:0%Hidden2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Hidden2/BiasAdd/ReadVariableOpReadVariableOp'hidden2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Hidden2/BiasAddBiasAddHidden2/MatMul:product:0&Hidden2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
Hidden2/ReluReluHidden2/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
Output/MatMulMatMulHidden2/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
IdentityIdentityOutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Hidden1/BiasAdd/ReadVariableOp^Hidden1/MatMul/ReadVariableOp^Hidden2/BiasAdd/ReadVariableOp^Hidden2/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOpF^dense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2C^dense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2A^dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2D^dense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2M^dense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2H^dense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2@
Hidden1/BiasAdd/ReadVariableOpHidden1/BiasAdd/ReadVariableOp2>
Hidden1/MatMul/ReadVariableOpHidden1/MatMul/ReadVariableOp2@
Hidden2/BiasAdd/ReadVariableOpHidden2/BiasAdd/ReadVariableOp2>
Hidden2/MatMul/ReadVariableOpHidden2/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp2?
Edense_features/Category_indicator/hash_table_Lookup/LookupTableFindV2Edense_features/Category_indicator/hash_table_Lookup/LookupTableFindV22?
Bdense_features/Group_indicator/hash_table_Lookup/LookupTableFindV2Bdense_features/Group_indicator/hash_table_Lookup/LookupTableFindV22?
@dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV2@dense_features/SKU_indicator/hash_table_Lookup/LookupTableFindV22?
Cdense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV2Cdense_features/cityId_indicator/hash_table_Lookup/LookupTableFindV22?
Ldense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV2Ldense_features/countryOfOrigin_indicator/hash_table_Lookup/LookupTableFindV22?
Gdense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2Gdense_features/geoCluster_indicator/hash_table_Lookup/LookupTableFindV2:T P
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Category:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/Group:OK
#
_output_shapes
:?????????
$
_user_specified_name
inputs/SKU:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/cityId:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/countryOfOrigin:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/date:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/geoCluster:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/price:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_2583282
.table_init237_lookuptableimportv2_table_handle*
&table_init237_lookuptableimportv2_keys	,
(table_init237_lookuptableimportv2_values	
identity??!table_init237/LookupTableImportV2?
!table_init237/LookupTableImportV2LookupTableImportV2.table_init237_lookuptableimportv2_table_handle&table_init237_lookuptableimportv2_keys(table_init237_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init237/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :<:<2F
!table_init237/LookupTableImportV2!table_init237/LookupTableImportV2: 

_output_shapes
:<: 

_output_shapes
:<
?
-
__inference__destroyer_258250
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference__initializer_2582632
.table_init275_lookuptableimportv2_table_handle*
&table_init275_lookuptableimportv2_keys	,
(table_init275_lookuptableimportv2_values	
identity??!table_init275/LookupTableImportV2?
!table_init275/LookupTableImportV2LookupTableImportV2.table_init275_lookuptableimportv2_table_handle&table_init275_lookuptableimportv2_keys(table_init275_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init275/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init275/LookupTableImportV2!table_init275/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
;
__inference__creator_258273
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name314*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
$__inference_signature_wrapper_257699
category	
group
sku	

cityid	
countryoforigin	
date

geocluster		
price
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11:	?

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcategorygroupskucityidcountryoforigindate
geoclusterpriceunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*%
Tin
2										*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_256238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
Category:JF
#
_output_shapes
:?????????

_user_specified_nameGroup:HD
#
_output_shapes
:?????????

_user_specified_nameSKU:KG
#
_output_shapes
:?????????
 
_user_specified_namecityId:TP
#
_output_shapes
:?????????
)
_user_specified_namecountryOfOrigin:IE
#
_output_shapes
:?????????

_user_specified_namedate:OK
#
_output_shapes
:?????????
$
_user_specified_name
geoCluster:JF
#
_output_shapes
:?????????

_user_specified_nameprice:	

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_Output_layer_call_fn_258186

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_256512o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
;
__inference__creator_258201
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name164*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
__inference__initializer_2582272
.table_init199_lookuptableimportv2_table_handle*
&table_init199_lookuptableimportv2_keys,
(table_init199_lookuptableimportv2_values	
identity??!table_init199/LookupTableImportV2?
!table_init199/LookupTableImportV2LookupTableImportV2.table_init199_lookuptableimportv2_table_handle&table_init199_lookuptableimportv2_keys(table_init199_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init199/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init199/LookupTableImportV2!table_init199/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
(__inference_Hidden2_layer_call_fn_258166

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Hidden2_layer_call_and_return_conditional_losses_256496o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__initializer_2582812
.table_init313_lookuptableimportv2_table_handle*
&table_init313_lookuptableimportv2_keys	,
(table_init313_lookuptableimportv2_values	
identity??!table_init313/LookupTableImportV2?
!table_init313/LookupTableImportV2LookupTableImportV2.table_init313_lookuptableimportv2_table_handle&table_init313_lookuptableimportv2_keys(table_init313_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init313/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init313/LookupTableImportV2!table_init313/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_7:0StatefulPartitionedCall_88"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
9
Category-
serving_default_Category:0?????????
3
Group*
serving_default_Group:0?????????
/
SKU(
serving_default_SKU:0	?????????
5
cityId+
serving_default_cityId:0	?????????
G
countryOfOrigin4
!serving_default_countryOfOrigin:0	?????????
1
date)
serving_default_date:0?????????
=

geoCluster/
serving_default_geoCluster:0	?????????
3
price*
serving_default_price:0?????????>
output_12
StatefulPartitionedCall_6:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
_build_input_shape
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
?
/iter

0beta_1

1beta_2
	2decay
3learning_ratem}m~m m?'m?(m?v?v?v? v?'v?(v?"
	optimizer
 "
trackable_dict_wrapper
J
0
1
2
 3
'4
(5"
trackable_list_wrapper
J
0
1
2
 3
'4
(5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_sequential_1_layer_call_fn_256558
-__inference_sequential_1_layer_call_fn_257195
-__inference_sequential_1_layer_call_fn_257243
-__inference_sequential_1_layer_call_fn_257039?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_1_layer_call_and_return_conditional_losses_257446
H__inference_sequential_1_layer_call_and_return_conditional_losses_257649
H__inference_sequential_1_layer_call_and_return_conditional_losses_257090
H__inference_sequential_1_layer_call_and_return_conditional_losses_257141?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_256238CategoryGroupSKUcityIdcountryOfOrigindate
geoClusterprice"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
9serving_default"
signature_map
 "
trackable_list_wrapper
q
:Category
	;Group
<SKU

=cityId
>countryOfOrigin
?
geoCluster"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_dense_features_layer_call_fn_257735
/__inference_dense_features_layer_call_fn_257771?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_dense_features_layer_call_and_return_conditional_losses_257954
J__inference_dense_features_layer_call_and_return_conditional_losses_258137?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.:,	?2sequential_1/Hidden1/kernel
':%2sequential_1/Hidden1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_Hidden1_layer_call_fn_258146?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_Hidden1_layer_call_and_return_conditional_losses_258157?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
-:+2sequential_1/Hidden2/kernel
':%2sequential_1/Hidden2/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_Hidden2_layer_call_fn_258166?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_Hidden2_layer_call_and_return_conditional_losses_258177?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,:*2sequential_1/Output/kernel
&:$2sequential_1/Output/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_Output_layer_call_fn_258186?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_Output_layer_call_and_return_conditional_losses_258196?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_257699CategoryGroupSKUcityIdcountryOfOrigindate
geoClusterprice"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
3
VCategory_lookup"
_generic_user_object
0
WGroup_lookup"
_generic_user_object
.
X
SKU_lookup"
_generic_user_object
1
YcityId_lookup"
_generic_user_object
:
ZcountryOfOrigin_lookup"
_generic_user_object
5
[geoCluster_lookup"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	\total
	]count
^	variables
_	keras_api"
_tf_keras_metric
^
	`total
	acount
b
_fn_kwargs
c	variables
d	keras_api"
_tf_keras_metric
j
e_initializer
f_create_resource
g_initialize
h_destroy_resourceR jCustom.StaticHashTable
j
i_initializer
j_create_resource
k_initialize
l_destroy_resourceR jCustom.StaticHashTable
j
m_initializer
n_create_resource
o_initialize
p_destroy_resourceR jCustom.StaticHashTable
j
q_initializer
r_create_resource
s_initialize
t_destroy_resourceR jCustom.StaticHashTable
j
u_initializer
v_create_resource
w_initialize
x_destroy_resourceR jCustom.StaticHashTable
j
y_initializer
z_create_resource
{_initialize
|_destroy_resourceR jCustom.StaticHashTable
:  (2total
:  (2count
.
\0
]1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
`0
a1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
"
_generic_user_object
?2?
__inference__creator_258201?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_258209?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_258214?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_258219?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_258227?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_258232?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_258237?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_258245?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_258250?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_258255?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_258263?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_258268?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_258273?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_258281?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_258286?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_258291?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_258299?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_258304?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
3:1	?2"Adam/sequential_1/Hidden1/kernel/m
,:*2 Adam/sequential_1/Hidden1/bias/m
2:02"Adam/sequential_1/Hidden2/kernel/m
,:*2 Adam/sequential_1/Hidden2/bias/m
1:/2!Adam/sequential_1/Output/kernel/m
+:)2Adam/sequential_1/Output/bias/m
3:1	?2"Adam/sequential_1/Hidden1/kernel/v
,:*2 Adam/sequential_1/Hidden1/bias/v
2:02"Adam/sequential_1/Hidden2/kernel/v
,:*2 Adam/sequential_1/Hidden2/bias/v
1:/2!Adam/sequential_1/Output/kernel/v
+:)2Adam/sequential_1/Output/bias/v
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9
J

Const_10
J

Const_11
J

Const_12
J

Const_13
J

Const_14
J

Const_15
J

Const_16
J

Const_17?
C__inference_Hidden1_layer_call_and_return_conditional_losses_258157]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? |
(__inference_Hidden1_layer_call_fn_258146P0?-
&?#
!?
inputs??????????
? "???????????
C__inference_Hidden2_layer_call_and_return_conditional_losses_258177\ /?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_Hidden2_layer_call_fn_258166O /?,
%?"
 ?
inputs?????????
? "???????????
B__inference_Output_layer_call_and_return_conditional_losses_258196\'(/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_Output_layer_call_fn_258186O'(/?,
%?"
 ?
inputs?????????
? "??????????7
__inference__creator_258201?

? 
? "? 7
__inference__creator_258219?

? 
? "? 7
__inference__creator_258237?

? 
? "? 7
__inference__creator_258255?

? 
? "? 7
__inference__creator_258273?

? 
? "? 7
__inference__creator_258291?

? 
? "? 9
__inference__destroyer_258214?

? 
? "? 9
__inference__destroyer_258232?

? 
? "? 9
__inference__destroyer_258250?

? 
? "? 9
__inference__destroyer_258268?

? 
? "? 9
__inference__destroyer_258286?

? 
? "? 9
__inference__destroyer_258304?

? 
? "? B
__inference__initializer_258209V???

? 
? "? B
__inference__initializer_258227W???

? 
? "? B
__inference__initializer_258245X???

? 
? "? B
__inference__initializer_258263Y???

? 
? "? B
__inference__initializer_258281Z???

? 
? "? B
__inference__initializer_258299[???

? 
? "? ?
!__inference__wrapped_model_256238?V?W?X?Y?Z?[? '(???
???
???
*
Category?
Category?????????
$
Group?
Group?????????
 
SKU?
SKU?????????	
&
cityId?
cityId?????????	
8
countryOfOrigin%?"
countryOfOrigin?????????	
"
date?
date?????????
.

geoCluster ?

geoCluster?????????	
$
price?
price?????????
? "3?0
.
output_1"?
output_1??????????
J__inference_dense_features_layer_call_and_return_conditional_losses_257954?V?W?X?Y?Z?[????
???
???
3
Category'?$
features/Category?????????
-
Group$?!
features/Group?????????
)
SKU"?
features/SKU?????????	
/
cityId%?"
features/cityId?????????	
A
countryOfOrigin.?+
features/countryOfOrigin?????????	
+
date#? 
features/date?????????
7

geoCluster)?&
features/geoCluster?????????	
-
price$?!
features/price?????????

 
p 
? "&?#
?
0??????????
? ?
J__inference_dense_features_layer_call_and_return_conditional_losses_258137?V?W?X?Y?Z?[????
???
???
3
Category'?$
features/Category?????????
-
Group$?!
features/Group?????????
)
SKU"?
features/SKU?????????	
/
cityId%?"
features/cityId?????????	
A
countryOfOrigin.?+
features/countryOfOrigin?????????	
+
date#? 
features/date?????????
7

geoCluster)?&
features/geoCluster?????????	
-
price$?!
features/price?????????

 
p
? "&?#
?
0??????????
? ?
/__inference_dense_features_layer_call_fn_257735?V?W?X?Y?Z?[????
???
???
3
Category'?$
features/Category?????????
-
Group$?!
features/Group?????????
)
SKU"?
features/SKU?????????	
/
cityId%?"
features/cityId?????????	
A
countryOfOrigin.?+
features/countryOfOrigin?????????	
+
date#? 
features/date?????????
7

geoCluster)?&
features/geoCluster?????????	
-
price$?!
features/price?????????

 
p 
? "????????????
/__inference_dense_features_layer_call_fn_257771?V?W?X?Y?Z?[????
???
???
3
Category'?$
features/Category?????????
-
Group$?!
features/Group?????????
)
SKU"?
features/SKU?????????	
/
cityId%?"
features/cityId?????????	
A
countryOfOrigin.?+
features/countryOfOrigin?????????	
+
date#? 
features/date?????????
7

geoCluster)?&
features/geoCluster?????????	
-
price$?!
features/price?????????

 
p
? "????????????
H__inference_sequential_1_layer_call_and_return_conditional_losses_257090?V?W?X?Y?Z?[? '(???
???
???
*
Category?
Category?????????
$
Group?
Group?????????
 
SKU?
SKU?????????	
&
cityId?
cityId?????????	
8
countryOfOrigin%?"
countryOfOrigin?????????	
"
date?
date?????????
.

geoCluster ?

geoCluster?????????	
$
price?
price?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_257141?V?W?X?Y?Z?[? '(???
???
???
*
Category?
Category?????????
$
Group?
Group?????????
 
SKU?
SKU?????????	
&
cityId?
cityId?????????	
8
countryOfOrigin%?"
countryOfOrigin?????????	
"
date?
date?????????
.

geoCluster ?

geoCluster?????????	
$
price?
price?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_257446?V?W?X?Y?Z?[? '(???
???
???
1
Category%?"
inputs/Category?????????
+
Group"?
inputs/Group?????????
'
SKU ?

inputs/SKU?????????	
-
cityId#? 
inputs/cityId?????????	
?
countryOfOrigin,?)
inputs/countryOfOrigin?????????	
)
date!?
inputs/date?????????
5

geoCluster'?$
inputs/geoCluster?????????	
+
price"?
inputs/price?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_257649?V?W?X?Y?Z?[? '(???
???
???
1
Category%?"
inputs/Category?????????
+
Group"?
inputs/Group?????????
'
SKU ?

inputs/SKU?????????	
-
cityId#? 
inputs/cityId?????????	
?
countryOfOrigin,?)
inputs/countryOfOrigin?????????	
)
date!?
inputs/date?????????
5

geoCluster'?$
inputs/geoCluster?????????	
+
price"?
inputs/price?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_1_layer_call_fn_256558?V?W?X?Y?Z?[? '(???
???
???
*
Category?
Category?????????
$
Group?
Group?????????
 
SKU?
SKU?????????	
&
cityId?
cityId?????????	
8
countryOfOrigin%?"
countryOfOrigin?????????	
"
date?
date?????????
.

geoCluster ?

geoCluster?????????	
$
price?
price?????????
p 

 
? "???????????
-__inference_sequential_1_layer_call_fn_257039?V?W?X?Y?Z?[? '(???
???
???
*
Category?
Category?????????
$
Group?
Group?????????
 
SKU?
SKU?????????	
&
cityId?
cityId?????????	
8
countryOfOrigin%?"
countryOfOrigin?????????	
"
date?
date?????????
.

geoCluster ?

geoCluster?????????	
$
price?
price?????????
p

 
? "???????????
-__inference_sequential_1_layer_call_fn_257195?V?W?X?Y?Z?[? '(???
???
???
1
Category%?"
inputs/Category?????????
+
Group"?
inputs/Group?????????
'
SKU ?

inputs/SKU?????????	
-
cityId#? 
inputs/cityId?????????	
?
countryOfOrigin,?)
inputs/countryOfOrigin?????????	
)
date!?
inputs/date?????????
5

geoCluster'?$
inputs/geoCluster?????????	
+
price"?
inputs/price?????????
p 

 
? "???????????
-__inference_sequential_1_layer_call_fn_257243?V?W?X?Y?Z?[? '(???
???
???
1
Category%?"
inputs/Category?????????
+
Group"?
inputs/Group?????????
'
SKU ?

inputs/SKU?????????	
-
cityId#? 
inputs/cityId?????????	
?
countryOfOrigin,?)
inputs/countryOfOrigin?????????	
)
date!?
inputs/date?????????
5

geoCluster'?$
inputs/geoCluster?????????	
+
price"?
inputs/price?????????
p

 
? "???????????
$__inference_signature_wrapper_257699?V?W?X?Y?Z?[? '(???
? 
???
*
Category?
Category?????????
$
Group?
Group?????????
 
SKU?
SKU?????????	
&
cityId?
cityId?????????	
8
countryOfOrigin%?"
countryOfOrigin?????????	
"
date?
date?????????
.

geoCluster ?

geoCluster?????????	
$
price?
price?????????"3?0
.
output_1"?
output_1?????????