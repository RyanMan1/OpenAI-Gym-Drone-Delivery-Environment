??	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
	MaxPool3D

input"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"
Ttype:
2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
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
executor_typestring ?
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
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
?
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
??*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:?*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?	*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?	*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:	*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
h

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
 
8
0
1
2
3
'4
(5
-6
.7
8
0
1
2
3
'4
(5
-6
.7
 
?
3metrics

4layers
5layer_regularization_losses

	variables
trainable_variables
6non_trainable_variables
regularization_losses
7layer_metrics
 
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
8metrics

9layers
:layer_regularization_losses
	variables
trainable_variables
;non_trainable_variables
regularization_losses
<layer_metrics
 
 
 
?
=metrics

>layers
?layer_regularization_losses
	variables
trainable_variables
@non_trainable_variables
regularization_losses
Alayer_metrics
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Bmetrics

Clayers
Dlayer_regularization_losses
	variables
trainable_variables
Enon_trainable_variables
regularization_losses
Flayer_metrics
 
 
 
?
Gmetrics

Hlayers
Ilayer_regularization_losses
	variables
 trainable_variables
Jnon_trainable_variables
!regularization_losses
Klayer_metrics
 
 
 
?
Lmetrics

Mlayers
Nlayer_regularization_losses
#	variables
$trainable_variables
Onon_trainable_variables
%regularization_losses
Player_metrics
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
?
Qmetrics

Rlayers
Slayer_regularization_losses
)	variables
*trainable_variables
Tnon_trainable_variables
+regularization_losses
Ulayer_metrics
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1

-0
.1
 
?
Vmetrics

Wlayers
Xlayer_regularization_losses
/	variables
0trainable_variables
Ynon_trainable_variables
1regularization_losses
Zlayer_metrics
 
8
0
1
2
3
4
5
6
7
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_brain_inPlaceholder*3
_output_shapes!
:?????????UU*
dtype0*(
shape:?????????UU
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_brain_inconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0J 8@? *+
f&R$
"__inference_signature_wrapper_1365
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpConst*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *&
f!R
__inference__traced_save_1722
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *)
f$R"
 __inference__traced_restore_1756ǉ
?!
?
A__inference_model_1_layer_call_and_return_conditional_losses_1285
brain_in
conv2d_2_conv2d_2_kernel
conv2d_2_conv2d_2_bias
conv2d_3_conv2d_3_kernel
conv2d_3_conv2d_3_bias
dense_2_dense_2_kernel
dense_2_dense_2_bias
dense_3_dense_3_kernel
dense_3_dense_3_bias
identity?? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallbrain_inconv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_11372"
 conv2d_2/StatefulPartitionedCall?
max_pooling3d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *R
fMRK
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_10802!
max_pooling3d_2/PartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv2d_3_conv2d_3_kernelconv2d_3_conv2d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????		*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_11882"
 conv2d_3/StatefulPartitionedCall?
max_pooling3d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *R
fMRK
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_10972!
max_pooling3d_3/PartitionedCall?
flattened/PartitionedCallPartitionedCall(max_pooling3d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_flattened_layer_call_and_return_conditional_losses_12122
flattened/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flattened/PartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_12312!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_dense_3_kerneldense_3_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_12532!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:] Y
3
_output_shapes!
:?????????UU
"
_user_specified_name
brain_in
?	
?
&__inference_model_1_layer_call_fn_1536

inputs
conv2d_2_kernel
conv2d_2_bias
conv2d_3_kernel
conv2d_3_bias
dense_2_kernel
dense_2_bias
dense_3_kernel
dense_3_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_kernelconv2d_2_biasconv2d_3_kernelconv2d_3_biasdense_2_kerneldense_2_biasdense_3_kerneldense_3_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_13072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????UU
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_1365
brain_in
conv2d_2_kernel
conv2d_2_bias
conv2d_3_kernel
conv2d_3_bias
dense_2_kernel
dense_2_bias
dense_3_kernel
dense_3_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallbrain_inconv2d_2_kernelconv2d_2_biasconv2d_3_kernelconv2d_3_biasdense_2_kerneldense_2_biasdense_3_kerneldense_3_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0J 8@? *(
f#R!
__inference__wrapped_model_10662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????UU
"
_user_specified_name
brain_in
?

?
A__inference_dense_2_layer_call_and_return_conditional_losses_1231

inputs(
$matmul_readvariableop_dense_2_kernel'
#biasadd_readvariableop_dense_2_bias
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_2_kernel* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_2_bias*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
J
.__inference_max_pooling3d_2_layer_call_fn_1083

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *R
fMRK
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_10802
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?!
?
A__inference_model_1_layer_call_and_return_conditional_losses_1307

inputs
conv2d_2_conv2d_2_kernel
conv2d_2_conv2d_2_bias
conv2d_3_conv2d_3_kernel
conv2d_3_conv2d_3_bias
dense_2_dense_2_kernel
dense_2_dense_2_bias
dense_3_dense_3_kernel
dense_3_dense_3_bias
identity?? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_11372"
 conv2d_2/StatefulPartitionedCall?
max_pooling3d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *R
fMRK
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_10802!
max_pooling3d_2/PartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv2d_3_conv2d_3_kernelconv2d_3_conv2d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????		*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_11882"
 conv2d_3/StatefulPartitionedCall?
max_pooling3d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *R
fMRK
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_10972!
max_pooling3d_3/PartitionedCall?
flattened/PartitionedCallPartitionedCall(max_pooling3d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_flattened_layer_call_and_return_conditional_losses_12122
flattened/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flattened/PartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_12312!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_dense_3_kerneldense_3_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_12532!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????UU
 
_user_specified_nameinputs
?
_
C__inference_flattened_layer_call_and_return_conditional_losses_1635

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
&__inference_dense_2_layer_call_fn_1658

inputs
dense_2_kernel
dense_2_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_kerneldense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_12312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_dense_3_layer_call_fn_1675

inputs
dense_3_kernel
dense_3_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_kerneldense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_12532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1072

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?*
?
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1622

inputs0
,conv2d_conv2d_readvariableop_conv2d_3_kernel;
7squeeze_batch_dims_biasadd_readvariableop_conv2d_3_bias
identity??Conv2D/Conv2D/ReadVariableOp?)squeeze_batch_dims/BiasAdd/ReadVariableOpR
Conv2D/ShapeShapeinputs*
T0*
_output_shapes
:2
Conv2D/Shape?
Conv2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Conv2D/strided_slice/stack?
Conv2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
Conv2D/strided_slice/stack_1?
Conv2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Conv2D/strided_slice/stack_2?
Conv2D/strided_sliceStridedSliceConv2D/Shape:output:0#Conv2D/strided_slice/stack:output:0%Conv2D/strided_slice/stack_1:output:0%Conv2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Conv2D/strided_slice?
Conv2D/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
Conv2D/Reshape/shape?
Conv2D/ReshapeReshapeinputsConv2D/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
Conv2D/Reshape?
Conv2D/Conv2D/ReadVariableOpReadVariableOp,conv2d_conv2d_readvariableop_conv2d_3_kernel*&
_output_shapes
:*
dtype02
Conv2D/Conv2D/ReadVariableOp?
Conv2D/Conv2DConv2DConv2D/Reshape:output:0$Conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		*
paddingVALID*
strides
2
Conv2D/Conv2D?
Conv2D/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"	   	      2
Conv2D/concat/values_1s
Conv2D/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Conv2D/concat/axis?
Conv2D/concatConcatV2Conv2D/strided_slice:output:0Conv2D/concat/values_1:output:0Conv2D/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Conv2D/concat?
Conv2D/Reshape_1ReshapeConv2D/Conv2D:output:0Conv2D/concat:output:0*
T0*3
_output_shapes!
:?????????		2
Conv2D/Reshape_1}
squeeze_batch_dims/ShapeShapeConv2D/Reshape_1:output:0*
T0*
_output_shapes
:2
squeeze_batch_dims/Shape?
&squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&squeeze_batch_dims/strided_slice/stack?
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2*
(squeeze_batch_dims/strided_slice/stack_1?
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2?
 squeeze_batch_dims/strided_sliceStridedSlice!squeeze_batch_dims/Shape:output:0/squeeze_batch_dims/strided_slice/stack:output:01squeeze_batch_dims/strided_slice/stack_1:output:01squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 squeeze_batch_dims/strided_slice?
 squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????	   	      2"
 squeeze_batch_dims/Reshape/shape?
squeeze_batch_dims/ReshapeReshapeConv2D/Reshape_1:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????		2
squeeze_batch_dims/Reshape?
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp7squeeze_batch_dims_biasadd_readvariableop_conv2d_3_bias*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp?
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		2
squeeze_batch_dims/BiasAdd?
"squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"	   	      2$
"squeeze_batch_dims/concat/values_1?
squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
squeeze_batch_dims/concat/axis?
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat?
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*3
_output_shapes!
:?????????		2
squeeze_batch_dims/Reshape_1y
ReluRelu%squeeze_batch_dims/Reshape_1:output:0*
T0*3
_output_shapes!
:?????????		2
Relu?
IdentityIdentityRelu:activations:0^Conv2D/Conv2D/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*3
_output_shapes!
:?????????		2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::2<
Conv2D/Conv2D/ReadVariableOpConv2D/Conv2D/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?	
?
A__inference_dense_3_layer_call_and_return_conditional_losses_1253

inputs(
$matmul_readvariableop_dense_3_kernel'
#biasadd_readvariableop_dense_3_bias
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_3_kernel*
_output_shapes
:	?	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_3_bias*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_dense_3_layer_call_and_return_conditional_losses_1668

inputs(
$matmul_readvariableop_dense_3_kernel'
#biasadd_readvariableop_dense_3_bias
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_3_kernel*
_output_shapes
:	?	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_3_bias*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_dense_2_layer_call_and_return_conditional_losses_1651

inputs(
$matmul_readvariableop_dense_2_kernel'
#biasadd_readvariableop_dense_2_bias
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_2_kernel* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_2_bias*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_conv2d_2_layer_call_fn_1589

inputs
conv2d_2_kernel
conv2d_2_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_kernelconv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_11372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????((2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????UU::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????UU
 
_user_specified_nameinputs
?
e
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1089

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?%
?
 __inference__traced_restore_1756
file_prefix$
 assignvariableop_conv2d_2_kernel$
 assignvariableop_1_conv2d_2_bias&
"assignvariableop_2_conv2d_3_kernel$
 assignvariableop_3_conv2d_3_bias%
!assignvariableop_4_dense_2_kernel#
assignvariableop_5_dense_2_bias%
!assignvariableop_6_dense_3_kernel#
assignvariableop_7_dense_3_bias

identity_9??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8?

Identity_9IdentityIdentity_8:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
T0*
_output_shapes
: 2

Identity_9"!

identity_9Identity_9:output:0*5
_input_shapes$
": ::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
_
C__inference_flattened_layer_call_and_return_conditional_losses_1212

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?v
?
A__inference_model_1_layer_call_and_return_conditional_losses_1444

inputs9
5conv2d_2_conv2d_conv2d_readvariableop_conv2d_2_kernelD
@conv2d_2_squeeze_batch_dims_biasadd_readvariableop_conv2d_2_bias9
5conv2d_3_conv2d_conv2d_readvariableop_conv2d_3_kernelD
@conv2d_3_squeeze_batch_dims_biasadd_readvariableop_conv2d_3_bias0
,dense_2_matmul_readvariableop_dense_2_kernel/
+dense_2_biasadd_readvariableop_dense_2_bias0
,dense_3_matmul_readvariableop_dense_3_kernel/
+dense_3_biasadd_readvariableop_dense_3_bias
identity??%conv2d_2/Conv2D/Conv2D/ReadVariableOp?2conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp?%conv2d_3/Conv2D/Conv2D/ReadVariableOp?2conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOpd
conv2d_2/Conv2D/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_2/Conv2D/Shape?
#conv2d_2/Conv2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv2d_2/Conv2D/strided_slice/stack?
%conv2d_2/Conv2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv2d_2/Conv2D/strided_slice/stack_1?
%conv2d_2/Conv2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv2d_2/Conv2D/strided_slice/stack_2?
conv2d_2/Conv2D/strided_sliceStridedSliceconv2d_2/Conv2D/Shape:output:0,conv2d_2/Conv2D/strided_slice/stack:output:0.conv2d_2/Conv2D/strided_slice/stack_1:output:0.conv2d_2/Conv2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
conv2d_2/Conv2D/strided_slice?
conv2d_2/Conv2D/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????U   U      2
conv2d_2/Conv2D/Reshape/shape?
conv2d_2/Conv2D/ReshapeReshapeinputs&conv2d_2/Conv2D/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????UU2
conv2d_2/Conv2D/Reshape?
%conv2d_2/Conv2D/Conv2D/ReadVariableOpReadVariableOp5conv2d_2_conv2d_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
:*
dtype02'
%conv2d_2/Conv2D/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/Conv2DConv2D conv2d_2/Conv2D/Reshape:output:0-conv2d_2/Conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????((*
paddingVALID*
strides
2
conv2d_2/Conv2D/Conv2D?
conv2d_2/Conv2D/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"(   (      2!
conv2d_2/Conv2D/concat/values_1?
conv2d_2/Conv2D/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv2d_2/Conv2D/concat/axis?
conv2d_2/Conv2D/concatConcatV2&conv2d_2/Conv2D/strided_slice:output:0(conv2d_2/Conv2D/concat/values_1:output:0$conv2d_2/Conv2D/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv2d_2/Conv2D/concat?
conv2d_2/Conv2D/Reshape_1Reshapeconv2d_2/Conv2D/Conv2D:output:0conv2d_2/Conv2D/concat:output:0*
T0*3
_output_shapes!
:?????????((2
conv2d_2/Conv2D/Reshape_1?
!conv2d_2/squeeze_batch_dims/ShapeShape"conv2d_2/Conv2D/Reshape_1:output:0*
T0*
_output_shapes
:2#
!conv2d_2/squeeze_batch_dims/Shape?
/conv2d_2/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/conv2d_2/squeeze_batch_dims/strided_slice/stack?
1conv2d_2/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????23
1conv2d_2/squeeze_batch_dims/strided_slice/stack_1?
1conv2d_2/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1conv2d_2/squeeze_batch_dims/strided_slice/stack_2?
)conv2d_2/squeeze_batch_dims/strided_sliceStridedSlice*conv2d_2/squeeze_batch_dims/Shape:output:08conv2d_2/squeeze_batch_dims/strided_slice/stack:output:0:conv2d_2/squeeze_batch_dims/strided_slice/stack_1:output:0:conv2d_2/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2+
)conv2d_2/squeeze_batch_dims/strided_slice?
)conv2d_2/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????(   (      2+
)conv2d_2/squeeze_batch_dims/Reshape/shape?
#conv2d_2/squeeze_batch_dims/ReshapeReshape"conv2d_2/Conv2D/Reshape_1:output:02conv2d_2/squeeze_batch_dims/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????((2%
#conv2d_2/squeeze_batch_dims/Reshape?
2conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp@conv2d_2_squeeze_batch_dims_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:*
dtype024
2conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp?
#conv2d_2/squeeze_batch_dims/BiasAddBiasAdd,conv2d_2/squeeze_batch_dims/Reshape:output:0:conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????((2%
#conv2d_2/squeeze_batch_dims/BiasAdd?
+conv2d_2/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"(   (      2-
+conv2d_2/squeeze_batch_dims/concat/values_1?
'conv2d_2/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'conv2d_2/squeeze_batch_dims/concat/axis?
"conv2d_2/squeeze_batch_dims/concatConcatV22conv2d_2/squeeze_batch_dims/strided_slice:output:04conv2d_2/squeeze_batch_dims/concat/values_1:output:00conv2d_2/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"conv2d_2/squeeze_batch_dims/concat?
%conv2d_2/squeeze_batch_dims/Reshape_1Reshape,conv2d_2/squeeze_batch_dims/BiasAdd:output:0+conv2d_2/squeeze_batch_dims/concat:output:0*
T0*3
_output_shapes!
:?????????((2'
%conv2d_2/squeeze_batch_dims/Reshape_1?
conv2d_2/ReluRelu.conv2d_2/squeeze_batch_dims/Reshape_1:output:0*
T0*3
_output_shapes!
:?????????((2
conv2d_2/Relu?
max_pooling3d_2/MaxPool3D	MaxPool3Dconv2d_2/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_2/MaxPool3D?
conv2d_3/Conv2D/ShapeShape"max_pooling3d_2/MaxPool3D:output:0*
T0*
_output_shapes
:2
conv2d_3/Conv2D/Shape?
#conv2d_3/Conv2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv2d_3/Conv2D/strided_slice/stack?
%conv2d_3/Conv2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv2d_3/Conv2D/strided_slice/stack_1?
%conv2d_3/Conv2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv2d_3/Conv2D/strided_slice/stack_2?
conv2d_3/Conv2D/strided_sliceStridedSliceconv2d_3/Conv2D/Shape:output:0,conv2d_3/Conv2D/strided_slice/stack:output:0.conv2d_3/Conv2D/strided_slice/stack_1:output:0.conv2d_3/Conv2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
conv2d_3/Conv2D/strided_slice?
conv2d_3/Conv2D/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
conv2d_3/Conv2D/Reshape/shape?
conv2d_3/Conv2D/ReshapeReshape"max_pooling3d_2/MaxPool3D:output:0&conv2d_3/Conv2D/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
conv2d_3/Conv2D/Reshape?
%conv2d_3/Conv2D/Conv2D/ReadVariableOpReadVariableOp5conv2d_3_conv2d_conv2d_readvariableop_conv2d_3_kernel*&
_output_shapes
:*
dtype02'
%conv2d_3/Conv2D/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/Conv2DConv2D conv2d_3/Conv2D/Reshape:output:0-conv2d_3/Conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		*
paddingVALID*
strides
2
conv2d_3/Conv2D/Conv2D?
conv2d_3/Conv2D/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"	   	      2!
conv2d_3/Conv2D/concat/values_1?
conv2d_3/Conv2D/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv2d_3/Conv2D/concat/axis?
conv2d_3/Conv2D/concatConcatV2&conv2d_3/Conv2D/strided_slice:output:0(conv2d_3/Conv2D/concat/values_1:output:0$conv2d_3/Conv2D/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv2d_3/Conv2D/concat?
conv2d_3/Conv2D/Reshape_1Reshapeconv2d_3/Conv2D/Conv2D:output:0conv2d_3/Conv2D/concat:output:0*
T0*3
_output_shapes!
:?????????		2
conv2d_3/Conv2D/Reshape_1?
!conv2d_3/squeeze_batch_dims/ShapeShape"conv2d_3/Conv2D/Reshape_1:output:0*
T0*
_output_shapes
:2#
!conv2d_3/squeeze_batch_dims/Shape?
/conv2d_3/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/conv2d_3/squeeze_batch_dims/strided_slice/stack?
1conv2d_3/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????23
1conv2d_3/squeeze_batch_dims/strided_slice/stack_1?
1conv2d_3/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1conv2d_3/squeeze_batch_dims/strided_slice/stack_2?
)conv2d_3/squeeze_batch_dims/strided_sliceStridedSlice*conv2d_3/squeeze_batch_dims/Shape:output:08conv2d_3/squeeze_batch_dims/strided_slice/stack:output:0:conv2d_3/squeeze_batch_dims/strided_slice/stack_1:output:0:conv2d_3/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2+
)conv2d_3/squeeze_batch_dims/strided_slice?
)conv2d_3/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????	   	      2+
)conv2d_3/squeeze_batch_dims/Reshape/shape?
#conv2d_3/squeeze_batch_dims/ReshapeReshape"conv2d_3/Conv2D/Reshape_1:output:02conv2d_3/squeeze_batch_dims/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????		2%
#conv2d_3/squeeze_batch_dims/Reshape?
2conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp@conv2d_3_squeeze_batch_dims_biasadd_readvariableop_conv2d_3_bias*
_output_shapes
:*
dtype024
2conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp?
#conv2d_3/squeeze_batch_dims/BiasAddBiasAdd,conv2d_3/squeeze_batch_dims/Reshape:output:0:conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		2%
#conv2d_3/squeeze_batch_dims/BiasAdd?
+conv2d_3/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"	   	      2-
+conv2d_3/squeeze_batch_dims/concat/values_1?
'conv2d_3/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'conv2d_3/squeeze_batch_dims/concat/axis?
"conv2d_3/squeeze_batch_dims/concatConcatV22conv2d_3/squeeze_batch_dims/strided_slice:output:04conv2d_3/squeeze_batch_dims/concat/values_1:output:00conv2d_3/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"conv2d_3/squeeze_batch_dims/concat?
%conv2d_3/squeeze_batch_dims/Reshape_1Reshape,conv2d_3/squeeze_batch_dims/BiasAdd:output:0+conv2d_3/squeeze_batch_dims/concat:output:0*
T0*3
_output_shapes!
:?????????		2'
%conv2d_3/squeeze_batch_dims/Reshape_1?
conv2d_3/ReluRelu.conv2d_3/squeeze_batch_dims/Reshape_1:output:0*
T0*3
_output_shapes!
:?????????		2
conv2d_3/Relu?
max_pooling3d_3/MaxPool3D	MaxPool3Dconv2d_3/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_3/MaxPool3Ds
flattened/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flattened/Const?
flattened/ReshapeReshape"max_pooling3d_3/MaxPool3D:output:0flattened/Const:output:0*
T0*(
_output_shapes
:??????????2
flattened/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp,dense_2_matmul_readvariableop_dense_2_kernel* 
_output_shapes
:
??*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflattened/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp+dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp,dense_3_matmul_readvariableop_dense_3_kernel*
_output_shapes
:	?	*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp+dense_3_biasadd_readvariableop_dense_3_bias*
_output_shapes
:	*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0&^conv2d_2/Conv2D/Conv2D/ReadVariableOp3^conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp&^conv2d_3/Conv2D/Conv2D/ReadVariableOp3^conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::2N
%conv2d_2/Conv2D/Conv2D/ReadVariableOp%conv2d_2/Conv2D/Conv2D/ReadVariableOp2h
2conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp2conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp2N
%conv2d_3/Conv2D/Conv2D/ReadVariableOp%conv2d_3/Conv2D/Conv2D/ReadVariableOp2h
2conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp2conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:?????????UU
 
_user_specified_nameinputs
?
?
__inference__traced_save_1722
file_prefix.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*k
_input_shapesZ
X: :::::
??:?:	?	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?	: 

_output_shapes
:	:	

_output_shapes
: 
?
e
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1080

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_conv2d_3_layer_call_fn_1629

inputs
conv2d_3_kernel
conv2d_3_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_kernelconv2d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????		*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_11882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????		2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?!
?
A__inference_model_1_layer_call_and_return_conditional_losses_1266
brain_in
conv2d_2_conv2d_2_kernel
conv2d_2_conv2d_2_bias
conv2d_3_conv2d_3_kernel
conv2d_3_conv2d_3_bias
dense_2_dense_2_kernel
dense_2_dense_2_bias
dense_3_dense_3_kernel
dense_3_dense_3_bias
identity?? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallbrain_inconv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_11372"
 conv2d_2/StatefulPartitionedCall?
max_pooling3d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *R
fMRK
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_10802!
max_pooling3d_2/PartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv2d_3_conv2d_3_kernelconv2d_3_conv2d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????		*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_11882"
 conv2d_3/StatefulPartitionedCall?
max_pooling3d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *R
fMRK
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_10972!
max_pooling3d_3/PartitionedCall?
flattened/PartitionedCallPartitionedCall(max_pooling3d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_flattened_layer_call_and_return_conditional_losses_12122
flattened/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flattened/PartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_12312!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_dense_3_kerneldense_3_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_12532!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:] Y
3
_output_shapes!
:?????????UU
"
_user_specified_name
brain_in
?	
?
&__inference_model_1_layer_call_fn_1350
brain_in
conv2d_2_kernel
conv2d_2_bias
conv2d_3_kernel
conv2d_3_bias
dense_2_kernel
dense_2_bias
dense_3_kernel
dense_3_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallbrain_inconv2d_2_kernelconv2d_2_biasconv2d_3_kernelconv2d_3_biasdense_2_kerneldense_2_biasdense_3_kerneldense_3_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_13392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????UU
"
_user_specified_name
brain_in
?
D
(__inference_flattened_layer_call_fn_1640

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_flattened_layer_call_and_return_conditional_losses_12122
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?*
?
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1582

inputs0
,conv2d_conv2d_readvariableop_conv2d_2_kernel;
7squeeze_batch_dims_biasadd_readvariableop_conv2d_2_bias
identity??Conv2D/Conv2D/ReadVariableOp?)squeeze_batch_dims/BiasAdd/ReadVariableOpR
Conv2D/ShapeShapeinputs*
T0*
_output_shapes
:2
Conv2D/Shape?
Conv2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Conv2D/strided_slice/stack?
Conv2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
Conv2D/strided_slice/stack_1?
Conv2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Conv2D/strided_slice/stack_2?
Conv2D/strided_sliceStridedSliceConv2D/Shape:output:0#Conv2D/strided_slice/stack:output:0%Conv2D/strided_slice/stack_1:output:0%Conv2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Conv2D/strided_slice?
Conv2D/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????U   U      2
Conv2D/Reshape/shape?
Conv2D/ReshapeReshapeinputsConv2D/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????UU2
Conv2D/Reshape?
Conv2D/Conv2D/ReadVariableOpReadVariableOp,conv2d_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
:*
dtype02
Conv2D/Conv2D/ReadVariableOp?
Conv2D/Conv2DConv2DConv2D/Reshape:output:0$Conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????((*
paddingVALID*
strides
2
Conv2D/Conv2D?
Conv2D/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"(   (      2
Conv2D/concat/values_1s
Conv2D/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Conv2D/concat/axis?
Conv2D/concatConcatV2Conv2D/strided_slice:output:0Conv2D/concat/values_1:output:0Conv2D/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Conv2D/concat?
Conv2D/Reshape_1ReshapeConv2D/Conv2D:output:0Conv2D/concat:output:0*
T0*3
_output_shapes!
:?????????((2
Conv2D/Reshape_1}
squeeze_batch_dims/ShapeShapeConv2D/Reshape_1:output:0*
T0*
_output_shapes
:2
squeeze_batch_dims/Shape?
&squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&squeeze_batch_dims/strided_slice/stack?
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2*
(squeeze_batch_dims/strided_slice/stack_1?
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2?
 squeeze_batch_dims/strided_sliceStridedSlice!squeeze_batch_dims/Shape:output:0/squeeze_batch_dims/strided_slice/stack:output:01squeeze_batch_dims/strided_slice/stack_1:output:01squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 squeeze_batch_dims/strided_slice?
 squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????(   (      2"
 squeeze_batch_dims/Reshape/shape?
squeeze_batch_dims/ReshapeReshapeConv2D/Reshape_1:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????((2
squeeze_batch_dims/Reshape?
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp7squeeze_batch_dims_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp?
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????((2
squeeze_batch_dims/BiasAdd?
"squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"(   (      2$
"squeeze_batch_dims/concat/values_1?
squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
squeeze_batch_dims/concat/axis?
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat?
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*3
_output_shapes!
:?????????((2
squeeze_batch_dims/Reshape_1y
ReluRelu%squeeze_batch_dims/Reshape_1:output:0*
T0*3
_output_shapes!
:?????????((2
Relu?
IdentityIdentityRelu:activations:0^Conv2D/Conv2D/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*3
_output_shapes!
:?????????((2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????UU::2<
Conv2D/Conv2D/ReadVariableOpConv2D/Conv2D/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:[ W
3
_output_shapes!
:?????????UU
 
_user_specified_nameinputs
?!
?
A__inference_model_1_layer_call_and_return_conditional_losses_1339

inputs
conv2d_2_conv2d_2_kernel
conv2d_2_conv2d_2_bias
conv2d_3_conv2d_3_kernel
conv2d_3_conv2d_3_bias
dense_2_dense_2_kernel
dense_2_dense_2_bias
dense_3_dense_3_kernel
dense_3_dense_3_bias
identity?? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_conv2d_2_kernelconv2d_2_conv2d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_11372"
 conv2d_2/StatefulPartitionedCall?
max_pooling3d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *R
fMRK
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_10802!
max_pooling3d_2/PartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv2d_3_conv2d_3_kernelconv2d_3_conv2d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????		*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_11882"
 conv2d_3/StatefulPartitionedCall?
max_pooling3d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *R
fMRK
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_10972!
max_pooling3d_3/PartitionedCall?
flattened/PartitionedCallPartitionedCall(max_pooling3d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_flattened_layer_call_and_return_conditional_losses_12122
flattened/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flattened/PartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_12312!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_dense_3_kerneldense_3_dense_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_12532!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????UU
 
_user_specified_nameinputs
?*
?
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1188

inputs0
,conv2d_conv2d_readvariableop_conv2d_3_kernel;
7squeeze_batch_dims_biasadd_readvariableop_conv2d_3_bias
identity??Conv2D/Conv2D/ReadVariableOp?)squeeze_batch_dims/BiasAdd/ReadVariableOpR
Conv2D/ShapeShapeinputs*
T0*
_output_shapes
:2
Conv2D/Shape?
Conv2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Conv2D/strided_slice/stack?
Conv2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
Conv2D/strided_slice/stack_1?
Conv2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Conv2D/strided_slice/stack_2?
Conv2D/strided_sliceStridedSliceConv2D/Shape:output:0#Conv2D/strided_slice/stack:output:0%Conv2D/strided_slice/stack_1:output:0%Conv2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Conv2D/strided_slice?
Conv2D/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
Conv2D/Reshape/shape?
Conv2D/ReshapeReshapeinputsConv2D/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
Conv2D/Reshape?
Conv2D/Conv2D/ReadVariableOpReadVariableOp,conv2d_conv2d_readvariableop_conv2d_3_kernel*&
_output_shapes
:*
dtype02
Conv2D/Conv2D/ReadVariableOp?
Conv2D/Conv2DConv2DConv2D/Reshape:output:0$Conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		*
paddingVALID*
strides
2
Conv2D/Conv2D?
Conv2D/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"	   	      2
Conv2D/concat/values_1s
Conv2D/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Conv2D/concat/axis?
Conv2D/concatConcatV2Conv2D/strided_slice:output:0Conv2D/concat/values_1:output:0Conv2D/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Conv2D/concat?
Conv2D/Reshape_1ReshapeConv2D/Conv2D:output:0Conv2D/concat:output:0*
T0*3
_output_shapes!
:?????????		2
Conv2D/Reshape_1}
squeeze_batch_dims/ShapeShapeConv2D/Reshape_1:output:0*
T0*
_output_shapes
:2
squeeze_batch_dims/Shape?
&squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&squeeze_batch_dims/strided_slice/stack?
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2*
(squeeze_batch_dims/strided_slice/stack_1?
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2?
 squeeze_batch_dims/strided_sliceStridedSlice!squeeze_batch_dims/Shape:output:0/squeeze_batch_dims/strided_slice/stack:output:01squeeze_batch_dims/strided_slice/stack_1:output:01squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 squeeze_batch_dims/strided_slice?
 squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????	   	      2"
 squeeze_batch_dims/Reshape/shape?
squeeze_batch_dims/ReshapeReshapeConv2D/Reshape_1:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????		2
squeeze_batch_dims/Reshape?
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp7squeeze_batch_dims_biasadd_readvariableop_conv2d_3_bias*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp?
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		2
squeeze_batch_dims/BiasAdd?
"squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"	   	      2$
"squeeze_batch_dims/concat/values_1?
squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
squeeze_batch_dims/concat/axis?
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat?
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*3
_output_shapes!
:?????????		2
squeeze_batch_dims/Reshape_1y
ReluRelu%squeeze_batch_dims/Reshape_1:output:0*
T0*3
_output_shapes!
:?????????		2
Relu?
IdentityIdentityRelu:activations:0^Conv2D/Conv2D/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*3
_output_shapes!
:?????????		2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::2<
Conv2D/Conv2D/ReadVariableOpConv2D/Conv2D/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?	
?
&__inference_model_1_layer_call_fn_1549

inputs
conv2d_2_kernel
conv2d_2_bias
conv2d_3_kernel
conv2d_3_bias
dense_2_kernel
dense_2_bias
dense_3_kernel
dense_3_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_kernelconv2d_2_biasconv2d_3_kernelconv2d_3_biasdense_2_kerneldense_2_biasdense_3_kerneldense_3_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_13392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????UU
 
_user_specified_nameinputs
?	
?
&__inference_model_1_layer_call_fn_1318
brain_in
conv2d_2_kernel
conv2d_2_bias
conv2d_3_kernel
conv2d_3_bias
dense_2_kernel
dense_2_bias
dense_3_kernel
dense_3_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallbrain_inconv2d_2_kernelconv2d_2_biasconv2d_3_kernelconv2d_3_biasdense_2_kerneldense_2_biasdense_3_kerneldense_3_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0J 8@? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_13072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????UU
"
_user_specified_name
brain_in
?*
?
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1137

inputs0
,conv2d_conv2d_readvariableop_conv2d_2_kernel;
7squeeze_batch_dims_biasadd_readvariableop_conv2d_2_bias
identity??Conv2D/Conv2D/ReadVariableOp?)squeeze_batch_dims/BiasAdd/ReadVariableOpR
Conv2D/ShapeShapeinputs*
T0*
_output_shapes
:2
Conv2D/Shape?
Conv2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Conv2D/strided_slice/stack?
Conv2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2
Conv2D/strided_slice/stack_1?
Conv2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Conv2D/strided_slice/stack_2?
Conv2D/strided_sliceStridedSliceConv2D/Shape:output:0#Conv2D/strided_slice/stack:output:0%Conv2D/strided_slice/stack_1:output:0%Conv2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Conv2D/strided_slice?
Conv2D/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????U   U      2
Conv2D/Reshape/shape?
Conv2D/ReshapeReshapeinputsConv2D/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????UU2
Conv2D/Reshape?
Conv2D/Conv2D/ReadVariableOpReadVariableOp,conv2d_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
:*
dtype02
Conv2D/Conv2D/ReadVariableOp?
Conv2D/Conv2DConv2DConv2D/Reshape:output:0$Conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????((*
paddingVALID*
strides
2
Conv2D/Conv2D?
Conv2D/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"(   (      2
Conv2D/concat/values_1s
Conv2D/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Conv2D/concat/axis?
Conv2D/concatConcatV2Conv2D/strided_slice:output:0Conv2D/concat/values_1:output:0Conv2D/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Conv2D/concat?
Conv2D/Reshape_1ReshapeConv2D/Conv2D:output:0Conv2D/concat:output:0*
T0*3
_output_shapes!
:?????????((2
Conv2D/Reshape_1}
squeeze_batch_dims/ShapeShapeConv2D/Reshape_1:output:0*
T0*
_output_shapes
:2
squeeze_batch_dims/Shape?
&squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&squeeze_batch_dims/strided_slice/stack?
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2*
(squeeze_batch_dims/strided_slice/stack_1?
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2?
 squeeze_batch_dims/strided_sliceStridedSlice!squeeze_batch_dims/Shape:output:0/squeeze_batch_dims/strided_slice/stack:output:01squeeze_batch_dims/strided_slice/stack_1:output:01squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 squeeze_batch_dims/strided_slice?
 squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????(   (      2"
 squeeze_batch_dims/Reshape/shape?
squeeze_batch_dims/ReshapeReshapeConv2D/Reshape_1:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????((2
squeeze_batch_dims/Reshape?
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp7squeeze_batch_dims_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp?
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????((2
squeeze_batch_dims/BiasAdd?
"squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"(   (      2$
"squeeze_batch_dims/concat/values_1?
squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
squeeze_batch_dims/concat/axis?
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat?
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*3
_output_shapes!
:?????????((2
squeeze_batch_dims/Reshape_1y
ReluRelu%squeeze_batch_dims/Reshape_1:output:0*
T0*3
_output_shapes!
:?????????((2
Relu?
IdentityIdentityRelu:activations:0^Conv2D/Conv2D/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*3
_output_shapes!
:?????????((2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????UU::2<
Conv2D/Conv2D/ReadVariableOpConv2D/Conv2D/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:[ W
3
_output_shapes!
:?????????UU
 
_user_specified_nameinputs
?v
?
A__inference_model_1_layer_call_and_return_conditional_losses_1523

inputs9
5conv2d_2_conv2d_conv2d_readvariableop_conv2d_2_kernelD
@conv2d_2_squeeze_batch_dims_biasadd_readvariableop_conv2d_2_bias9
5conv2d_3_conv2d_conv2d_readvariableop_conv2d_3_kernelD
@conv2d_3_squeeze_batch_dims_biasadd_readvariableop_conv2d_3_bias0
,dense_2_matmul_readvariableop_dense_2_kernel/
+dense_2_biasadd_readvariableop_dense_2_bias0
,dense_3_matmul_readvariableop_dense_3_kernel/
+dense_3_biasadd_readvariableop_dense_3_bias
identity??%conv2d_2/Conv2D/Conv2D/ReadVariableOp?2conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp?%conv2d_3/Conv2D/Conv2D/ReadVariableOp?2conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOpd
conv2d_2/Conv2D/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_2/Conv2D/Shape?
#conv2d_2/Conv2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv2d_2/Conv2D/strided_slice/stack?
%conv2d_2/Conv2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv2d_2/Conv2D/strided_slice/stack_1?
%conv2d_2/Conv2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv2d_2/Conv2D/strided_slice/stack_2?
conv2d_2/Conv2D/strided_sliceStridedSliceconv2d_2/Conv2D/Shape:output:0,conv2d_2/Conv2D/strided_slice/stack:output:0.conv2d_2/Conv2D/strided_slice/stack_1:output:0.conv2d_2/Conv2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
conv2d_2/Conv2D/strided_slice?
conv2d_2/Conv2D/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????U   U      2
conv2d_2/Conv2D/Reshape/shape?
conv2d_2/Conv2D/ReshapeReshapeinputs&conv2d_2/Conv2D/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????UU2
conv2d_2/Conv2D/Reshape?
%conv2d_2/Conv2D/Conv2D/ReadVariableOpReadVariableOp5conv2d_2_conv2d_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
:*
dtype02'
%conv2d_2/Conv2D/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/Conv2DConv2D conv2d_2/Conv2D/Reshape:output:0-conv2d_2/Conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????((*
paddingVALID*
strides
2
conv2d_2/Conv2D/Conv2D?
conv2d_2/Conv2D/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"(   (      2!
conv2d_2/Conv2D/concat/values_1?
conv2d_2/Conv2D/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv2d_2/Conv2D/concat/axis?
conv2d_2/Conv2D/concatConcatV2&conv2d_2/Conv2D/strided_slice:output:0(conv2d_2/Conv2D/concat/values_1:output:0$conv2d_2/Conv2D/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv2d_2/Conv2D/concat?
conv2d_2/Conv2D/Reshape_1Reshapeconv2d_2/Conv2D/Conv2D:output:0conv2d_2/Conv2D/concat:output:0*
T0*3
_output_shapes!
:?????????((2
conv2d_2/Conv2D/Reshape_1?
!conv2d_2/squeeze_batch_dims/ShapeShape"conv2d_2/Conv2D/Reshape_1:output:0*
T0*
_output_shapes
:2#
!conv2d_2/squeeze_batch_dims/Shape?
/conv2d_2/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/conv2d_2/squeeze_batch_dims/strided_slice/stack?
1conv2d_2/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????23
1conv2d_2/squeeze_batch_dims/strided_slice/stack_1?
1conv2d_2/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1conv2d_2/squeeze_batch_dims/strided_slice/stack_2?
)conv2d_2/squeeze_batch_dims/strided_sliceStridedSlice*conv2d_2/squeeze_batch_dims/Shape:output:08conv2d_2/squeeze_batch_dims/strided_slice/stack:output:0:conv2d_2/squeeze_batch_dims/strided_slice/stack_1:output:0:conv2d_2/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2+
)conv2d_2/squeeze_batch_dims/strided_slice?
)conv2d_2/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????(   (      2+
)conv2d_2/squeeze_batch_dims/Reshape/shape?
#conv2d_2/squeeze_batch_dims/ReshapeReshape"conv2d_2/Conv2D/Reshape_1:output:02conv2d_2/squeeze_batch_dims/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????((2%
#conv2d_2/squeeze_batch_dims/Reshape?
2conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp@conv2d_2_squeeze_batch_dims_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:*
dtype024
2conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp?
#conv2d_2/squeeze_batch_dims/BiasAddBiasAdd,conv2d_2/squeeze_batch_dims/Reshape:output:0:conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????((2%
#conv2d_2/squeeze_batch_dims/BiasAdd?
+conv2d_2/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"(   (      2-
+conv2d_2/squeeze_batch_dims/concat/values_1?
'conv2d_2/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'conv2d_2/squeeze_batch_dims/concat/axis?
"conv2d_2/squeeze_batch_dims/concatConcatV22conv2d_2/squeeze_batch_dims/strided_slice:output:04conv2d_2/squeeze_batch_dims/concat/values_1:output:00conv2d_2/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"conv2d_2/squeeze_batch_dims/concat?
%conv2d_2/squeeze_batch_dims/Reshape_1Reshape,conv2d_2/squeeze_batch_dims/BiasAdd:output:0+conv2d_2/squeeze_batch_dims/concat:output:0*
T0*3
_output_shapes!
:?????????((2'
%conv2d_2/squeeze_batch_dims/Reshape_1?
conv2d_2/ReluRelu.conv2d_2/squeeze_batch_dims/Reshape_1:output:0*
T0*3
_output_shapes!
:?????????((2
conv2d_2/Relu?
max_pooling3d_2/MaxPool3D	MaxPool3Dconv2d_2/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_2/MaxPool3D?
conv2d_3/Conv2D/ShapeShape"max_pooling3d_2/MaxPool3D:output:0*
T0*
_output_shapes
:2
conv2d_3/Conv2D/Shape?
#conv2d_3/Conv2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#conv2d_3/Conv2D/strided_slice/stack?
%conv2d_3/Conv2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%conv2d_3/Conv2D/strided_slice/stack_1?
%conv2d_3/Conv2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%conv2d_3/Conv2D/strided_slice/stack_2?
conv2d_3/Conv2D/strided_sliceStridedSliceconv2d_3/Conv2D/Shape:output:0,conv2d_3/Conv2D/strided_slice/stack:output:0.conv2d_3/Conv2D/strided_slice/stack_1:output:0.conv2d_3/Conv2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
conv2d_3/Conv2D/strided_slice?
conv2d_3/Conv2D/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
conv2d_3/Conv2D/Reshape/shape?
conv2d_3/Conv2D/ReshapeReshape"max_pooling3d_2/MaxPool3D:output:0&conv2d_3/Conv2D/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
conv2d_3/Conv2D/Reshape?
%conv2d_3/Conv2D/Conv2D/ReadVariableOpReadVariableOp5conv2d_3_conv2d_conv2d_readvariableop_conv2d_3_kernel*&
_output_shapes
:*
dtype02'
%conv2d_3/Conv2D/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/Conv2DConv2D conv2d_3/Conv2D/Reshape:output:0-conv2d_3/Conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		*
paddingVALID*
strides
2
conv2d_3/Conv2D/Conv2D?
conv2d_3/Conv2D/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"	   	      2!
conv2d_3/Conv2D/concat/values_1?
conv2d_3/Conv2D/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv2d_3/Conv2D/concat/axis?
conv2d_3/Conv2D/concatConcatV2&conv2d_3/Conv2D/strided_slice:output:0(conv2d_3/Conv2D/concat/values_1:output:0$conv2d_3/Conv2D/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv2d_3/Conv2D/concat?
conv2d_3/Conv2D/Reshape_1Reshapeconv2d_3/Conv2D/Conv2D:output:0conv2d_3/Conv2D/concat:output:0*
T0*3
_output_shapes!
:?????????		2
conv2d_3/Conv2D/Reshape_1?
!conv2d_3/squeeze_batch_dims/ShapeShape"conv2d_3/Conv2D/Reshape_1:output:0*
T0*
_output_shapes
:2#
!conv2d_3/squeeze_batch_dims/Shape?
/conv2d_3/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/conv2d_3/squeeze_batch_dims/strided_slice/stack?
1conv2d_3/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????23
1conv2d_3/squeeze_batch_dims/strided_slice/stack_1?
1conv2d_3/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1conv2d_3/squeeze_batch_dims/strided_slice/stack_2?
)conv2d_3/squeeze_batch_dims/strided_sliceStridedSlice*conv2d_3/squeeze_batch_dims/Shape:output:08conv2d_3/squeeze_batch_dims/strided_slice/stack:output:0:conv2d_3/squeeze_batch_dims/strided_slice/stack_1:output:0:conv2d_3/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2+
)conv2d_3/squeeze_batch_dims/strided_slice?
)conv2d_3/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????	   	      2+
)conv2d_3/squeeze_batch_dims/Reshape/shape?
#conv2d_3/squeeze_batch_dims/ReshapeReshape"conv2d_3/Conv2D/Reshape_1:output:02conv2d_3/squeeze_batch_dims/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????		2%
#conv2d_3/squeeze_batch_dims/Reshape?
2conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp@conv2d_3_squeeze_batch_dims_biasadd_readvariableop_conv2d_3_bias*
_output_shapes
:*
dtype024
2conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp?
#conv2d_3/squeeze_batch_dims/BiasAddBiasAdd,conv2d_3/squeeze_batch_dims/Reshape:output:0:conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		2%
#conv2d_3/squeeze_batch_dims/BiasAdd?
+conv2d_3/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"	   	      2-
+conv2d_3/squeeze_batch_dims/concat/values_1?
'conv2d_3/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'conv2d_3/squeeze_batch_dims/concat/axis?
"conv2d_3/squeeze_batch_dims/concatConcatV22conv2d_3/squeeze_batch_dims/strided_slice:output:04conv2d_3/squeeze_batch_dims/concat/values_1:output:00conv2d_3/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"conv2d_3/squeeze_batch_dims/concat?
%conv2d_3/squeeze_batch_dims/Reshape_1Reshape,conv2d_3/squeeze_batch_dims/BiasAdd:output:0+conv2d_3/squeeze_batch_dims/concat:output:0*
T0*3
_output_shapes!
:?????????		2'
%conv2d_3/squeeze_batch_dims/Reshape_1?
conv2d_3/ReluRelu.conv2d_3/squeeze_batch_dims/Reshape_1:output:0*
T0*3
_output_shapes!
:?????????		2
conv2d_3/Relu?
max_pooling3d_3/MaxPool3D	MaxPool3Dconv2d_3/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_3/MaxPool3Ds
flattened/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flattened/Const?
flattened/ReshapeReshape"max_pooling3d_3/MaxPool3D:output:0flattened/Const:output:0*
T0*(
_output_shapes
:??????????2
flattened/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp,dense_2_matmul_readvariableop_dense_2_kernel* 
_output_shapes
:
??*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflattened/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp+dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp,dense_3_matmul_readvariableop_dense_3_kernel*
_output_shapes
:	?	*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp+dense_3_biasadd_readvariableop_dense_3_bias*
_output_shapes
:	*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0&^conv2d_2/Conv2D/Conv2D/ReadVariableOp3^conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp&^conv2d_3/Conv2D/Conv2D/ReadVariableOp3^conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::2N
%conv2d_2/Conv2D/Conv2D/ReadVariableOp%conv2d_2/Conv2D/Conv2D/ReadVariableOp2h
2conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp2conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp2N
%conv2d_3/Conv2D/Conv2D/ReadVariableOp%conv2d_3/Conv2D/Conv2D/ReadVariableOp2h
2conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp2conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:?????????UU
 
_user_specified_nameinputs
?
e
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1097

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
??
?
__inference__wrapped_model_1066
brain_inA
=model_1_conv2d_2_conv2d_conv2d_readvariableop_conv2d_2_kernelL
Hmodel_1_conv2d_2_squeeze_batch_dims_biasadd_readvariableop_conv2d_2_biasA
=model_1_conv2d_3_conv2d_conv2d_readvariableop_conv2d_3_kernelL
Hmodel_1_conv2d_3_squeeze_batch_dims_biasadd_readvariableop_conv2d_3_bias8
4model_1_dense_2_matmul_readvariableop_dense_2_kernel7
3model_1_dense_2_biasadd_readvariableop_dense_2_bias8
4model_1_dense_3_matmul_readvariableop_dense_3_kernel7
3model_1_dense_3_biasadd_readvariableop_dense_3_bias
identity??-model_1/conv2d_2/Conv2D/Conv2D/ReadVariableOp?:model_1/conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp?-model_1/conv2d_3/Conv2D/Conv2D/ReadVariableOp?:model_1/conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp?&model_1/dense_2/BiasAdd/ReadVariableOp?%model_1/dense_2/MatMul/ReadVariableOp?&model_1/dense_3/BiasAdd/ReadVariableOp?%model_1/dense_3/MatMul/ReadVariableOpv
model_1/conv2d_2/Conv2D/ShapeShapebrain_in*
T0*
_output_shapes
:2
model_1/conv2d_2/Conv2D/Shape?
+model_1/conv2d_2/Conv2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+model_1/conv2d_2/Conv2D/strided_slice/stack?
-model_1/conv2d_2/Conv2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2/
-model_1/conv2d_2/Conv2D/strided_slice/stack_1?
-model_1/conv2d_2/Conv2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-model_1/conv2d_2/Conv2D/strided_slice/stack_2?
%model_1/conv2d_2/Conv2D/strided_sliceStridedSlice&model_1/conv2d_2/Conv2D/Shape:output:04model_1/conv2d_2/Conv2D/strided_slice/stack:output:06model_1/conv2d_2/Conv2D/strided_slice/stack_1:output:06model_1/conv2d_2/Conv2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2'
%model_1/conv2d_2/Conv2D/strided_slice?
%model_1/conv2d_2/Conv2D/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????U   U      2'
%model_1/conv2d_2/Conv2D/Reshape/shape?
model_1/conv2d_2/Conv2D/ReshapeReshapebrain_in.model_1/conv2d_2/Conv2D/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????UU2!
model_1/conv2d_2/Conv2D/Reshape?
-model_1/conv2d_2/Conv2D/Conv2D/ReadVariableOpReadVariableOp=model_1_conv2d_2_conv2d_conv2d_readvariableop_conv2d_2_kernel*&
_output_shapes
:*
dtype02/
-model_1/conv2d_2/Conv2D/Conv2D/ReadVariableOp?
model_1/conv2d_2/Conv2D/Conv2DConv2D(model_1/conv2d_2/Conv2D/Reshape:output:05model_1/conv2d_2/Conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????((*
paddingVALID*
strides
2 
model_1/conv2d_2/Conv2D/Conv2D?
'model_1/conv2d_2/Conv2D/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"(   (      2)
'model_1/conv2d_2/Conv2D/concat/values_1?
#model_1/conv2d_2/Conv2D/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#model_1/conv2d_2/Conv2D/concat/axis?
model_1/conv2d_2/Conv2D/concatConcatV2.model_1/conv2d_2/Conv2D/strided_slice:output:00model_1/conv2d_2/Conv2D/concat/values_1:output:0,model_1/conv2d_2/Conv2D/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
model_1/conv2d_2/Conv2D/concat?
!model_1/conv2d_2/Conv2D/Reshape_1Reshape'model_1/conv2d_2/Conv2D/Conv2D:output:0'model_1/conv2d_2/Conv2D/concat:output:0*
T0*3
_output_shapes!
:?????????((2#
!model_1/conv2d_2/Conv2D/Reshape_1?
)model_1/conv2d_2/squeeze_batch_dims/ShapeShape*model_1/conv2d_2/Conv2D/Reshape_1:output:0*
T0*
_output_shapes
:2+
)model_1/conv2d_2/squeeze_batch_dims/Shape?
7model_1/conv2d_2/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model_1/conv2d_2/squeeze_batch_dims/strided_slice/stack?
9model_1/conv2d_2/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2;
9model_1/conv2d_2/squeeze_batch_dims/strided_slice/stack_1?
9model_1/conv2d_2/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_1/conv2d_2/squeeze_batch_dims/strided_slice/stack_2?
1model_1/conv2d_2/squeeze_batch_dims/strided_sliceStridedSlice2model_1/conv2d_2/squeeze_batch_dims/Shape:output:0@model_1/conv2d_2/squeeze_batch_dims/strided_slice/stack:output:0Bmodel_1/conv2d_2/squeeze_batch_dims/strided_slice/stack_1:output:0Bmodel_1/conv2d_2/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask23
1model_1/conv2d_2/squeeze_batch_dims/strided_slice?
1model_1/conv2d_2/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????(   (      23
1model_1/conv2d_2/squeeze_batch_dims/Reshape/shape?
+model_1/conv2d_2/squeeze_batch_dims/ReshapeReshape*model_1/conv2d_2/Conv2D/Reshape_1:output:0:model_1/conv2d_2/squeeze_batch_dims/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????((2-
+model_1/conv2d_2/squeeze_batch_dims/Reshape?
:model_1/conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOpHmodel_1_conv2d_2_squeeze_batch_dims_biasadd_readvariableop_conv2d_2_bias*
_output_shapes
:*
dtype02<
:model_1/conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp?
+model_1/conv2d_2/squeeze_batch_dims/BiasAddBiasAdd4model_1/conv2d_2/squeeze_batch_dims/Reshape:output:0Bmodel_1/conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????((2-
+model_1/conv2d_2/squeeze_batch_dims/BiasAdd?
3model_1/conv2d_2/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"(   (      25
3model_1/conv2d_2/squeeze_batch_dims/concat/values_1?
/model_1/conv2d_2/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/model_1/conv2d_2/squeeze_batch_dims/concat/axis?
*model_1/conv2d_2/squeeze_batch_dims/concatConcatV2:model_1/conv2d_2/squeeze_batch_dims/strided_slice:output:0<model_1/conv2d_2/squeeze_batch_dims/concat/values_1:output:08model_1/conv2d_2/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2,
*model_1/conv2d_2/squeeze_batch_dims/concat?
-model_1/conv2d_2/squeeze_batch_dims/Reshape_1Reshape4model_1/conv2d_2/squeeze_batch_dims/BiasAdd:output:03model_1/conv2d_2/squeeze_batch_dims/concat:output:0*
T0*3
_output_shapes!
:?????????((2/
-model_1/conv2d_2/squeeze_batch_dims/Reshape_1?
model_1/conv2d_2/ReluRelu6model_1/conv2d_2/squeeze_batch_dims/Reshape_1:output:0*
T0*3
_output_shapes!
:?????????((2
model_1/conv2d_2/Relu?
!model_1/max_pooling3d_2/MaxPool3D	MaxPool3D#model_1/conv2d_2/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingVALID*
strides	
2#
!model_1/max_pooling3d_2/MaxPool3D?
model_1/conv2d_3/Conv2D/ShapeShape*model_1/max_pooling3d_2/MaxPool3D:output:0*
T0*
_output_shapes
:2
model_1/conv2d_3/Conv2D/Shape?
+model_1/conv2d_3/Conv2D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+model_1/conv2d_3/Conv2D/strided_slice/stack?
-model_1/conv2d_3/Conv2D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2/
-model_1/conv2d_3/Conv2D/strided_slice/stack_1?
-model_1/conv2d_3/Conv2D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-model_1/conv2d_3/Conv2D/strided_slice/stack_2?
%model_1/conv2d_3/Conv2D/strided_sliceStridedSlice&model_1/conv2d_3/Conv2D/Shape:output:04model_1/conv2d_3/Conv2D/strided_slice/stack:output:06model_1/conv2d_3/Conv2D/strided_slice/stack_1:output:06model_1/conv2d_3/Conv2D/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2'
%model_1/conv2d_3/Conv2D/strided_slice?
%model_1/conv2d_3/Conv2D/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2'
%model_1/conv2d_3/Conv2D/Reshape/shape?
model_1/conv2d_3/Conv2D/ReshapeReshape*model_1/max_pooling3d_2/MaxPool3D:output:0.model_1/conv2d_3/Conv2D/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2!
model_1/conv2d_3/Conv2D/Reshape?
-model_1/conv2d_3/Conv2D/Conv2D/ReadVariableOpReadVariableOp=model_1_conv2d_3_conv2d_conv2d_readvariableop_conv2d_3_kernel*&
_output_shapes
:*
dtype02/
-model_1/conv2d_3/Conv2D/Conv2D/ReadVariableOp?
model_1/conv2d_3/Conv2D/Conv2DConv2D(model_1/conv2d_3/Conv2D/Reshape:output:05model_1/conv2d_3/Conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		*
paddingVALID*
strides
2 
model_1/conv2d_3/Conv2D/Conv2D?
'model_1/conv2d_3/Conv2D/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"	   	      2)
'model_1/conv2d_3/Conv2D/concat/values_1?
#model_1/conv2d_3/Conv2D/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#model_1/conv2d_3/Conv2D/concat/axis?
model_1/conv2d_3/Conv2D/concatConcatV2.model_1/conv2d_3/Conv2D/strided_slice:output:00model_1/conv2d_3/Conv2D/concat/values_1:output:0,model_1/conv2d_3/Conv2D/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
model_1/conv2d_3/Conv2D/concat?
!model_1/conv2d_3/Conv2D/Reshape_1Reshape'model_1/conv2d_3/Conv2D/Conv2D:output:0'model_1/conv2d_3/Conv2D/concat:output:0*
T0*3
_output_shapes!
:?????????		2#
!model_1/conv2d_3/Conv2D/Reshape_1?
)model_1/conv2d_3/squeeze_batch_dims/ShapeShape*model_1/conv2d_3/Conv2D/Reshape_1:output:0*
T0*
_output_shapes
:2+
)model_1/conv2d_3/squeeze_batch_dims/Shape?
7model_1/conv2d_3/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model_1/conv2d_3/squeeze_batch_dims/strided_slice/stack?
9model_1/conv2d_3/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2;
9model_1/conv2d_3/squeeze_batch_dims/strided_slice/stack_1?
9model_1/conv2d_3/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_1/conv2d_3/squeeze_batch_dims/strided_slice/stack_2?
1model_1/conv2d_3/squeeze_batch_dims/strided_sliceStridedSlice2model_1/conv2d_3/squeeze_batch_dims/Shape:output:0@model_1/conv2d_3/squeeze_batch_dims/strided_slice/stack:output:0Bmodel_1/conv2d_3/squeeze_batch_dims/strided_slice/stack_1:output:0Bmodel_1/conv2d_3/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask23
1model_1/conv2d_3/squeeze_batch_dims/strided_slice?
1model_1/conv2d_3/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????	   	      23
1model_1/conv2d_3/squeeze_batch_dims/Reshape/shape?
+model_1/conv2d_3/squeeze_batch_dims/ReshapeReshape*model_1/conv2d_3/Conv2D/Reshape_1:output:0:model_1/conv2d_3/squeeze_batch_dims/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????		2-
+model_1/conv2d_3/squeeze_batch_dims/Reshape?
:model_1/conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOpHmodel_1_conv2d_3_squeeze_batch_dims_biasadd_readvariableop_conv2d_3_bias*
_output_shapes
:*
dtype02<
:model_1/conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp?
+model_1/conv2d_3/squeeze_batch_dims/BiasAddBiasAdd4model_1/conv2d_3/squeeze_batch_dims/Reshape:output:0Bmodel_1/conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		2-
+model_1/conv2d_3/squeeze_batch_dims/BiasAdd?
3model_1/conv2d_3/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"	   	      25
3model_1/conv2d_3/squeeze_batch_dims/concat/values_1?
/model_1/conv2d_3/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/model_1/conv2d_3/squeeze_batch_dims/concat/axis?
*model_1/conv2d_3/squeeze_batch_dims/concatConcatV2:model_1/conv2d_3/squeeze_batch_dims/strided_slice:output:0<model_1/conv2d_3/squeeze_batch_dims/concat/values_1:output:08model_1/conv2d_3/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2,
*model_1/conv2d_3/squeeze_batch_dims/concat?
-model_1/conv2d_3/squeeze_batch_dims/Reshape_1Reshape4model_1/conv2d_3/squeeze_batch_dims/BiasAdd:output:03model_1/conv2d_3/squeeze_batch_dims/concat:output:0*
T0*3
_output_shapes!
:?????????		2/
-model_1/conv2d_3/squeeze_batch_dims/Reshape_1?
model_1/conv2d_3/ReluRelu6model_1/conv2d_3/squeeze_batch_dims/Reshape_1:output:0*
T0*3
_output_shapes!
:?????????		2
model_1/conv2d_3/Relu?
!model_1/max_pooling3d_3/MaxPool3D	MaxPool3D#model_1/conv2d_3/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingVALID*
strides	
2#
!model_1/max_pooling3d_3/MaxPool3D?
model_1/flattened/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
model_1/flattened/Const?
model_1/flattened/ReshapeReshape*model_1/max_pooling3d_3/MaxPool3D:output:0 model_1/flattened/Const:output:0*
T0*(
_output_shapes
:??????????2
model_1/flattened/Reshape?
%model_1/dense_2/MatMul/ReadVariableOpReadVariableOp4model_1_dense_2_matmul_readvariableop_dense_2_kernel* 
_output_shapes
:
??*
dtype02'
%model_1/dense_2/MatMul/ReadVariableOp?
model_1/dense_2/MatMulMatMul"model_1/flattened/Reshape:output:0-model_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_1/dense_2/MatMul?
&model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp3model_1_dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes	
:?*
dtype02(
&model_1/dense_2/BiasAdd/ReadVariableOp?
model_1/dense_2/BiasAddBiasAdd model_1/dense_2/MatMul:product:0.model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_1/dense_2/BiasAdd?
model_1/dense_2/ReluRelu model_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_1/dense_2/Relu?
%model_1/dense_3/MatMul/ReadVariableOpReadVariableOp4model_1_dense_3_matmul_readvariableop_dense_3_kernel*
_output_shapes
:	?	*
dtype02'
%model_1/dense_3/MatMul/ReadVariableOp?
model_1/dense_3/MatMulMatMul"model_1/dense_2/Relu:activations:0-model_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
model_1/dense_3/MatMul?
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp3model_1_dense_3_biasadd_readvariableop_dense_3_bias*
_output_shapes
:	*
dtype02(
&model_1/dense_3/BiasAdd/ReadVariableOp?
model_1/dense_3/BiasAddBiasAdd model_1/dense_3/MatMul:product:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
model_1/dense_3/BiasAdd?
IdentityIdentity model_1/dense_3/BiasAdd:output:0.^model_1/conv2d_2/Conv2D/Conv2D/ReadVariableOp;^model_1/conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp.^model_1/conv2d_3/Conv2D/Conv2D/ReadVariableOp;^model_1/conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp'^model_1/dense_2/BiasAdd/ReadVariableOp&^model_1/dense_2/MatMul/ReadVariableOp'^model_1/dense_3/BiasAdd/ReadVariableOp&^model_1/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????UU::::::::2^
-model_1/conv2d_2/Conv2D/Conv2D/ReadVariableOp-model_1/conv2d_2/Conv2D/Conv2D/ReadVariableOp2x
:model_1/conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp:model_1/conv2d_2/squeeze_batch_dims/BiasAdd/ReadVariableOp2^
-model_1/conv2d_3/Conv2D/Conv2D/ReadVariableOp-model_1/conv2d_3/Conv2D/Conv2D/ReadVariableOp2x
:model_1/conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp:model_1/conv2d_3/squeeze_batch_dims/BiasAdd/ReadVariableOp2P
&model_1/dense_2/BiasAdd/ReadVariableOp&model_1/dense_2/BiasAdd/ReadVariableOp2N
%model_1/dense_2/MatMul/ReadVariableOp%model_1/dense_2/MatMul/ReadVariableOp2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2N
%model_1/dense_3/MatMul/ReadVariableOp%model_1/dense_3/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:?????????UU
"
_user_specified_name
brain_in
?
J
.__inference_max_pooling3d_3_layer_call_fn_1100

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *R
fMRK
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_10972
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
brain_in=
serving_default_brain_in:0?????????UU;
dense_30
StatefulPartitionedCall:0?????????	tensorflow/serving/predict:??
?D
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
*[&call_and_return_all_conditional_losses
\__call__
]_default_save_signature"?A
_tf_keras_network?A{"class_name": "Functional", "name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 85, 85, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "brain_in"}, "name": "brain_in", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 12, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_2", "inbound_nodes": [[["brain_in", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d_2", "inbound_nodes": [[["conv2d_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_3", "inbound_nodes": [[["max_pooling3d_2", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d_3", "inbound_nodes": [[["conv2d_3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flattened", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flattened", "inbound_nodes": [[["max_pooling3d_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["flattened", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 9, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}], "input_layers": [["brain_in", 0, 0]], "output_layers": [["dense_3", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1, 85, 85, 1]}, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 85, 85, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 85, 85, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "brain_in"}, "name": "brain_in", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 12, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_2", "inbound_nodes": [[["brain_in", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d_2", "inbound_nodes": [[["conv2d_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_3", "inbound_nodes": [[["max_pooling3d_2", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d_3", "inbound_nodes": [[["conv2d_3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flattened", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flattened", "inbound_nodes": [[["max_pooling3d_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["flattened", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 9, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}], "input_layers": [["brain_in", 0, 0]], "output_layers": [["dense_3", 0, 0]]}}, "training_config": {"loss": "mse", "metrics": [], "loss_weights": null, "sample_weight_mode": null, "weighted_metrics": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.01, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "brain_in", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 85, 85, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 85, 85, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "brain_in"}}
?	

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*^&call_and_return_all_conditional_losses
___call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 12, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 85, 85, 1]}}
?
	variables
trainable_variables
regularization_losses
	keras_api
*`&call_and_return_all_conditional_losses
a__call__"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*b&call_and_return_all_conditional_losses
c__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 12}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 20, 20, 12]}}
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
*d&call_and_return_all_conditional_losses
e__call__"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
*f&call_and_return_all_conditional_losses
g__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flattened", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flattened", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
*h&call_and_return_all_conditional_losses
i__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 384}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 384]}}
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
*j&call_and_return_all_conditional_losses
k__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 9, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
"
	optimizer
X
0
1
2
3
'4
(5
-6
.7"
trackable_list_wrapper
X
0
1
2
3
'4
(5
-6
.7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3metrics

4layers
5layer_regularization_losses

	variables
trainable_variables
6non_trainable_variables
regularization_losses
7layer_metrics
\__call__
]_default_save_signature
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
,
lserving_default"
signature_map
):'2conv2d_2/kernel
:2conv2d_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
8metrics

9layers
:layer_regularization_losses
	variables
trainable_variables
;non_trainable_variables
regularization_losses
<layer_metrics
___call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
=metrics

>layers
?layer_regularization_losses
	variables
trainable_variables
@non_trainable_variables
regularization_losses
Alayer_metrics
a__call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
):'2conv2d_3/kernel
:2conv2d_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Bmetrics

Clayers
Dlayer_regularization_losses
	variables
trainable_variables
Enon_trainable_variables
regularization_losses
Flayer_metrics
c__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Gmetrics

Hlayers
Ilayer_regularization_losses
	variables
 trainable_variables
Jnon_trainable_variables
!regularization_losses
Klayer_metrics
e__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lmetrics

Mlayers
Nlayer_regularization_losses
#	variables
$trainable_variables
Onon_trainable_variables
%regularization_losses
Player_metrics
g__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_2/kernel
:?2dense_2/bias
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
Qmetrics

Rlayers
Slayer_regularization_losses
)	variables
*trainable_variables
Tnon_trainable_variables
+regularization_losses
Ulayer_metrics
i__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
!:	?	2dense_3/kernel
:	2dense_3/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Vmetrics

Wlayers
Xlayer_regularization_losses
/	variables
0trainable_variables
Ynon_trainable_variables
1regularization_losses
Zlayer_metrics
k__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
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
?2?
A__inference_model_1_layer_call_and_return_conditional_losses_1523
A__inference_model_1_layer_call_and_return_conditional_losses_1266
A__inference_model_1_layer_call_and_return_conditional_losses_1285
A__inference_model_1_layer_call_and_return_conditional_losses_1444?
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
?2?
&__inference_model_1_layer_call_fn_1318
&__inference_model_1_layer_call_fn_1536
&__inference_model_1_layer_call_fn_1350
&__inference_model_1_layer_call_fn_1549?
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
?2?
__inference__wrapped_model_1066?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+
brain_in?????????UU
?2?
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1582?
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
'__inference_conv2d_2_layer_call_fn_1589?
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
?2?
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1072?
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
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
.__inference_max_pooling3d_2_layer_call_fn_1083?
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
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1622?
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
'__inference_conv2d_3_layer_call_fn_1629?
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
?2?
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1089?
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
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
.__inference_max_pooling3d_3_layer_call_fn_1100?
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
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
C__inference_flattened_layer_call_and_return_conditional_losses_1635?
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
(__inference_flattened_layer_call_fn_1640?
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
A__inference_dense_2_layer_call_and_return_conditional_losses_1651?
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
&__inference_dense_2_layer_call_fn_1658?
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
A__inference_dense_3_layer_call_and_return_conditional_losses_1668?
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
&__inference_dense_3_layer_call_fn_1675?
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
?B?
"__inference_signature_wrapper_1365brain_in"?
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
 ?
__inference__wrapped_model_1066|'(-.=?:
3?0
.?+
brain_in?????????UU
? "1?.
,
dense_3!?
dense_3?????????	?
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1582t;?8
1?.
,?)
inputs?????????UU
? "1?.
'?$
0?????????((
? ?
'__inference_conv2d_2_layer_call_fn_1589g;?8
1?.
,?)
inputs?????????UU
? "$?!?????????((?
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1622t;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????		
? ?
'__inference_conv2d_3_layer_call_fn_1629g;?8
1?.
,?)
inputs?????????
? "$?!?????????		?
A__inference_dense_2_layer_call_and_return_conditional_losses_1651^'(0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_2_layer_call_fn_1658Q'(0?-
&?#
!?
inputs??????????
? "????????????
A__inference_dense_3_layer_call_and_return_conditional_losses_1668]-.0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????	
? z
&__inference_dense_3_layer_call_fn_1675P-.0?-
&?#
!?
inputs??????????
? "??????????	?
C__inference_flattened_layer_call_and_return_conditional_losses_1635e;?8
1?.
,?)
inputs?????????
? "&?#
?
0??????????
? ?
(__inference_flattened_layer_call_fn_1640X;?8
1?.
,?)
inputs?????????
? "????????????
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1072?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
.__inference_max_pooling3d_2_layer_call_fn_1083?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1089?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
.__inference_max_pooling3d_3_layer_call_fn_1100?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
A__inference_model_1_layer_call_and_return_conditional_losses_1266x'(-.E?B
;?8
.?+
brain_in?????????UU
p

 
? "%?"
?
0?????????	
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_1285x'(-.E?B
;?8
.?+
brain_in?????????UU
p 

 
? "%?"
?
0?????????	
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_1444v'(-.C?@
9?6
,?)
inputs?????????UU
p

 
? "%?"
?
0?????????	
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_1523v'(-.C?@
9?6
,?)
inputs?????????UU
p 

 
? "%?"
?
0?????????	
? ?
&__inference_model_1_layer_call_fn_1318k'(-.E?B
;?8
.?+
brain_in?????????UU
p

 
? "??????????	?
&__inference_model_1_layer_call_fn_1350k'(-.E?B
;?8
.?+
brain_in?????????UU
p 

 
? "??????????	?
&__inference_model_1_layer_call_fn_1536i'(-.C?@
9?6
,?)
inputs?????????UU
p

 
? "??????????	?
&__inference_model_1_layer_call_fn_1549i'(-.C?@
9?6
,?)
inputs?????????UU
p 

 
? "??????????	?
"__inference_signature_wrapper_1365?'(-.I?F
? 
??<
:
brain_in.?+
brain_in?????????UU"1?.
,
dense_3!?
dense_3?????????	