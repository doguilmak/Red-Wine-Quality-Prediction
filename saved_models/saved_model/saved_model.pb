ìñ
Ô
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.22v2.9.1-132-g18960c44ad38åÆ

RMSprop/wine_type/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/wine_type/bias/rms

.RMSprop/wine_type/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/wine_type/bias/rms*
_output_shapes
:*
dtype0

RMSprop/wine_type/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*-
shared_nameRMSprop/wine_type/kernel/rms

0RMSprop/wine_type/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/wine_type/kernel/rms*
_output_shapes

:@*
dtype0

RMSprop/wine_quality/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/wine_quality/bias/rms

1RMSprop/wine_quality/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/wine_quality/bias/rms*
_output_shapes
:*
dtype0

RMSprop/wine_quality/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*0
shared_name!RMSprop/wine_quality/kernel/rms

3RMSprop/wine_quality/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/wine_quality/kernel/rms*
_output_shapes

:@*
dtype0

RMSprop/base_dense_3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameRMSprop/base_dense_3/bias/rms

1RMSprop/base_dense_3/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/base_dense_3/bias/rms*
_output_shapes
:@*
dtype0

RMSprop/base_dense_3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*0
shared_name!RMSprop/base_dense_3/kernel/rms

3RMSprop/base_dense_3/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/base_dense_3/kernel/rms*
_output_shapes
:	@*
dtype0

RMSprop/base_dense_2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/base_dense_2/bias/rms

1RMSprop/base_dense_2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/base_dense_2/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/base_dense_2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*0
shared_name!RMSprop/base_dense_2/kernel/rms

3RMSprop/base_dense_2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/base_dense_2/kernel/rms* 
_output_shapes
:
*
dtype0

RMSprop/base_dense_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/base_dense_1/bias/rms

1RMSprop/base_dense_1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/base_dense_1/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/base_dense_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*0
shared_name!RMSprop/base_dense_1/kernel/rms

3RMSprop/base_dense_1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/base_dense_1/kernel/rms*
_output_shapes
:	*
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
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
t
wine_type/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namewine_type/bias
m
"wine_type/bias/Read/ReadVariableOpReadVariableOpwine_type/bias*
_output_shapes
:*
dtype0
|
wine_type/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namewine_type/kernel
u
$wine_type/kernel/Read/ReadVariableOpReadVariableOpwine_type/kernel*
_output_shapes

:@*
dtype0
z
wine_quality/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namewine_quality/bias
s
%wine_quality/bias/Read/ReadVariableOpReadVariableOpwine_quality/bias*
_output_shapes
:*
dtype0

wine_quality/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_namewine_quality/kernel
{
'wine_quality/kernel/Read/ReadVariableOpReadVariableOpwine_quality/kernel*
_output_shapes

:@*
dtype0
z
base_dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namebase_dense_3/bias
s
%base_dense_3/bias/Read/ReadVariableOpReadVariableOpbase_dense_3/bias*
_output_shapes
:@*
dtype0

base_dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*$
shared_namebase_dense_3/kernel
|
'base_dense_3/kernel/Read/ReadVariableOpReadVariableOpbase_dense_3/kernel*
_output_shapes
:	@*
dtype0
{
base_dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namebase_dense_2/bias
t
%base_dense_2/bias/Read/ReadVariableOpReadVariableOpbase_dense_2/bias*
_output_shapes	
:*
dtype0

base_dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_namebase_dense_2/kernel
}
'base_dense_2/kernel/Read/ReadVariableOpReadVariableOpbase_dense_2/kernel* 
_output_shapes
:
*
dtype0
{
base_dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namebase_dense_1/bias
t
%base_dense_1/bias/Read/ReadVariableOpReadVariableOpbase_dense_1/bias*
_output_shapes	
:*
dtype0

base_dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_namebase_dense_1/kernel
|
'base_dense_1/kernel/Read/ReadVariableOpReadVariableOpbase_dense_1/kernel*
_output_shapes
:	*
dtype0

NoOpNoOp
B
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ÀA
value¶AB³A B¬A
¦
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias*
¦
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias*
¦
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias*
¦
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias*
J
0
1
2
 3
'4
(5
/6
07
78
89*
J
0
1
2
 3
'4
(5
/6
07
78
89*
* 
°
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
>trace_0
?trace_1
@trace_2
Atrace_3* 
6
Btrace_0
Ctrace_1
Dtrace_2
Etrace_3* 
* 
»
Fiter
	Gdecay
Hlearning_rate
Imomentum
Jrho
rms
rms
rms
 rms
'rms
(rms
/rms
0rms
7rms
8rms*
* 

Kserving_default* 

0
1*

0
1*
* 

Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Qtrace_0* 

Rtrace_0* 
c]
VARIABLE_VALUEbase_dense_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEbase_dense_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 

Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Xtrace_0* 

Ytrace_0* 
c]
VARIABLE_VALUEbase_dense_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEbase_dense_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 

Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

_trace_0* 

`trace_0* 
c]
VARIABLE_VALUEbase_dense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEbase_dense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

/0
01*

/0
01*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 
c]
VARIABLE_VALUEwine_quality/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEwine_quality/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

70
81*

70
81*
* 

hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

mtrace_0* 

ntrace_0* 
`Z
VARIABLE_VALUEwine_type/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEwine_type/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*
'
o0
p1
q2
r3
s4*
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
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
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
t	variables
u	keras_api
	vtotal
	wcount*
8
x	variables
y	keras_api
	ztotal
	{count*
8
|	variables
}	keras_api
	~total
	count*
<
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*

v0
w1*

t	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

z0
{1*

x	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

~0
1*

|	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

VARIABLE_VALUERMSprop/base_dense_1/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/base_dense_1/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/base_dense_2/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/base_dense_2/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/base_dense_3/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/base_dense_3/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/wine_quality/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/wine_quality/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/wine_type/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/wine_type/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1base_dense_1/kernelbase_dense_1/biasbase_dense_2/kernelbase_dense_2/biasbase_dense_3/kernelbase_dense_3/biaswine_type/kernelwine_type/biaswine_quality/kernelwine_quality/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_60758
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'base_dense_1/kernel/Read/ReadVariableOp%base_dense_1/bias/Read/ReadVariableOp'base_dense_2/kernel/Read/ReadVariableOp%base_dense_2/bias/Read/ReadVariableOp'base_dense_3/kernel/Read/ReadVariableOp%base_dense_3/bias/Read/ReadVariableOp'wine_quality/kernel/Read/ReadVariableOp%wine_quality/bias/Read/ReadVariableOp$wine_type/kernel/Read/ReadVariableOp"wine_type/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp3RMSprop/base_dense_1/kernel/rms/Read/ReadVariableOp1RMSprop/base_dense_1/bias/rms/Read/ReadVariableOp3RMSprop/base_dense_2/kernel/rms/Read/ReadVariableOp1RMSprop/base_dense_2/bias/rms/Read/ReadVariableOp3RMSprop/base_dense_3/kernel/rms/Read/ReadVariableOp1RMSprop/base_dense_3/bias/rms/Read/ReadVariableOp3RMSprop/wine_quality/kernel/rms/Read/ReadVariableOp1RMSprop/wine_quality/bias/rms/Read/ReadVariableOp0RMSprop/wine_type/kernel/rms/Read/ReadVariableOp.RMSprop/wine_type/bias/rms/Read/ReadVariableOpConst*0
Tin)
'2%	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_61118
Ý
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebase_dense_1/kernelbase_dense_1/biasbase_dense_2/kernelbase_dense_2/biasbase_dense_3/kernelbase_dense_3/biaswine_quality/kernelwine_quality/biaswine_type/kernelwine_type/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototal_4count_4total_3count_3total_2count_2total_1count_1totalcountRMSprop/base_dense_1/kernel/rmsRMSprop/base_dense_1/bias/rmsRMSprop/base_dense_2/kernel/rmsRMSprop/base_dense_2/bias/rmsRMSprop/base_dense_3/kernel/rmsRMSprop/base_dense_3/bias/rmsRMSprop/wine_quality/kernel/rmsRMSprop/wine_quality/bias/rmsRMSprop/wine_type/kernel/rmsRMSprop/wine_type/bias/rms*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_61233­§
Ê

%__inference_model_layer_call_fn_60785

inputs
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:
	unknown_7:@
	unknown_8:
identity

identity_1¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_60477o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª

û
G__inference_base_dense_2_layer_call_and_return_conditional_losses_60930

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


õ
D__inference_wine_type_layer_call_and_return_conditional_losses_60453

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
H
Í
__inference__traced_save_61118
file_prefix2
.savev2_base_dense_1_kernel_read_readvariableop0
,savev2_base_dense_1_bias_read_readvariableop2
.savev2_base_dense_2_kernel_read_readvariableop0
,savev2_base_dense_2_bias_read_readvariableop2
.savev2_base_dense_3_kernel_read_readvariableop0
,savev2_base_dense_3_bias_read_readvariableop2
.savev2_wine_quality_kernel_read_readvariableop0
,savev2_wine_quality_bias_read_readvariableop/
+savev2_wine_type_kernel_read_readvariableop-
)savev2_wine_type_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop>
:savev2_rmsprop_base_dense_1_kernel_rms_read_readvariableop<
8savev2_rmsprop_base_dense_1_bias_rms_read_readvariableop>
:savev2_rmsprop_base_dense_2_kernel_rms_read_readvariableop<
8savev2_rmsprop_base_dense_2_bias_rms_read_readvariableop>
:savev2_rmsprop_base_dense_3_kernel_rms_read_readvariableop<
8savev2_rmsprop_base_dense_3_bias_rms_read_readvariableop>
:savev2_rmsprop_wine_quality_kernel_rms_read_readvariableop<
8savev2_rmsprop_wine_quality_bias_rms_read_readvariableop;
7savev2_rmsprop_wine_type_kernel_rms_read_readvariableop9
5savev2_rmsprop_wine_type_bias_rms_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*«
value¡B$B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHµ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ©
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_base_dense_1_kernel_read_readvariableop,savev2_base_dense_1_bias_read_readvariableop.savev2_base_dense_2_kernel_read_readvariableop,savev2_base_dense_2_bias_read_readvariableop.savev2_base_dense_3_kernel_read_readvariableop,savev2_base_dense_3_bias_read_readvariableop.savev2_wine_quality_kernel_read_readvariableop,savev2_wine_quality_bias_read_readvariableop+savev2_wine_type_kernel_read_readvariableop)savev2_wine_type_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop:savev2_rmsprop_base_dense_1_kernel_rms_read_readvariableop8savev2_rmsprop_base_dense_1_bias_rms_read_readvariableop:savev2_rmsprop_base_dense_2_kernel_rms_read_readvariableop8savev2_rmsprop_base_dense_2_bias_rms_read_readvariableop:savev2_rmsprop_base_dense_3_kernel_rms_read_readvariableop8savev2_rmsprop_base_dense_3_bias_rms_read_readvariableop:savev2_rmsprop_wine_quality_kernel_rms_read_readvariableop8savev2_rmsprop_wine_quality_bias_rms_read_readvariableop7savev2_rmsprop_wine_type_kernel_rms_read_readvariableop5savev2_rmsprop_wine_type_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*ã
_input_shapesÑ
Î: :	::
::	@:@:@::@:: : : : : : : : : : : : : : : :	::
::	@:@:@::@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$	 

_output_shapes

:@: 


_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$  

_output_shapes

:@: !

_output_shapes
::$" 

_output_shapes

:@: #

_output_shapes
::$

_output_shapes
: 
ç
õ
!__inference__traced_restore_61233
file_prefix7
$assignvariableop_base_dense_1_kernel:	3
$assignvariableop_1_base_dense_1_bias:	:
&assignvariableop_2_base_dense_2_kernel:
3
$assignvariableop_3_base_dense_2_bias:	9
&assignvariableop_4_base_dense_3_kernel:	@2
$assignvariableop_5_base_dense_3_bias:@8
&assignvariableop_6_wine_quality_kernel:@2
$assignvariableop_7_wine_quality_bias:5
#assignvariableop_8_wine_type_kernel:@/
!assignvariableop_9_wine_type_bias:*
 assignvariableop_10_rmsprop_iter:	 +
!assignvariableop_11_rmsprop_decay: 3
)assignvariableop_12_rmsprop_learning_rate: .
$assignvariableop_13_rmsprop_momentum: )
assignvariableop_14_rmsprop_rho: %
assignvariableop_15_total_4: %
assignvariableop_16_count_4: %
assignvariableop_17_total_3: %
assignvariableop_18_count_3: %
assignvariableop_19_total_2: %
assignvariableop_20_count_2: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: #
assignvariableop_23_total: #
assignvariableop_24_count: F
3assignvariableop_25_rmsprop_base_dense_1_kernel_rms:	@
1assignvariableop_26_rmsprop_base_dense_1_bias_rms:	G
3assignvariableop_27_rmsprop_base_dense_2_kernel_rms:
@
1assignvariableop_28_rmsprop_base_dense_2_bias_rms:	F
3assignvariableop_29_rmsprop_base_dense_3_kernel_rms:	@?
1assignvariableop_30_rmsprop_base_dense_3_bias_rms:@E
3assignvariableop_31_rmsprop_wine_quality_kernel_rms:@?
1assignvariableop_32_rmsprop_wine_quality_bias_rms:B
0assignvariableop_33_rmsprop_wine_type_kernel_rms:@<
.assignvariableop_34_rmsprop_wine_type_bias_rms:
identity_36¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*«
value¡B$B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¸
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Õ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¦
_output_shapes
::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp$assignvariableop_base_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp$assignvariableop_1_base_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp&assignvariableop_2_base_dense_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp$assignvariableop_3_base_dense_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp&assignvariableop_4_base_dense_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp$assignvariableop_5_base_dense_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp&assignvariableop_6_wine_quality_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp$assignvariableop_7_wine_quality_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp#assignvariableop_8_wine_type_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp!assignvariableop_9_wine_type_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOp assignvariableop_10_rmsprop_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_rmsprop_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp)assignvariableop_12_rmsprop_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp$assignvariableop_13_rmsprop_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_rmsprop_rhoIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_4Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_4Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_3Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_3Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_25AssignVariableOp3assignvariableop_25_rmsprop_base_dense_1_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_26AssignVariableOp1assignvariableop_26_rmsprop_base_dense_1_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_27AssignVariableOp3assignvariableop_27_rmsprop_base_dense_2_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_28AssignVariableOp1assignvariableop_28_rmsprop_base_dense_2_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_29AssignVariableOp3assignvariableop_29_rmsprop_base_dense_3_kernel_rmsIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_30AssignVariableOp1assignvariableop_30_rmsprop_base_dense_3_bias_rmsIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_31AssignVariableOp3assignvariableop_31_rmsprop_wine_quality_kernel_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_32AssignVariableOp1assignvariableop_32_rmsprop_wine_quality_bias_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_33AssignVariableOp0assignvariableop_33_rmsprop_wine_type_kernel_rmsIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp.assignvariableop_34_rmsprop_wine_type_bias_rmsIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ñ
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: ¾
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342(
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
«
ÿ
#__inference_signature_wrapper_60758
input_1
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:
	unknown_7:@
	unknown_8:
identity

identity_1¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_60384o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
©

@__inference_model_layer_call_and_return_conditional_losses_60611

inputs%
base_dense_1_60584:	!
base_dense_1_60586:	&
base_dense_2_60589:
!
base_dense_2_60591:	%
base_dense_3_60594:	@ 
base_dense_3_60596:@!
wine_type_60599:@
wine_type_60601:$
wine_quality_60604:@ 
wine_quality_60606:
identity

identity_1¢$base_dense_1/StatefulPartitionedCall¢$base_dense_2/StatefulPartitionedCall¢$base_dense_3/StatefulPartitionedCall¢$wine_quality/StatefulPartitionedCall¢!wine_type/StatefulPartitionedCallþ
$base_dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsbase_dense_1_60584base_dense_1_60586*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_1_layer_call_and_return_conditional_losses_60402¥
$base_dense_2/StatefulPartitionedCallStatefulPartitionedCall-base_dense_1/StatefulPartitionedCall:output:0base_dense_2_60589base_dense_2_60591*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_2_layer_call_and_return_conditional_losses_60419¤
$base_dense_3/StatefulPartitionedCallStatefulPartitionedCall-base_dense_2/StatefulPartitionedCall:output:0base_dense_3_60594base_dense_3_60596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_3_layer_call_and_return_conditional_losses_60436
!wine_type/StatefulPartitionedCallStatefulPartitionedCall-base_dense_3/StatefulPartitionedCall:output:0wine_type_60599wine_type_60601*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_wine_type_layer_call_and_return_conditional_losses_60453¤
$wine_quality/StatefulPartitionedCallStatefulPartitionedCall-base_dense_3/StatefulPartitionedCall:output:0wine_quality_60604wine_quality_60606*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_wine_quality_layer_call_and_return_conditional_losses_60469|
IdentityIdentity-wine_quality/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{

Identity_1Identity*wine_type/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^base_dense_1/StatefulPartitionedCall%^base_dense_2/StatefulPartitionedCall%^base_dense_3/StatefulPartitionedCall%^wine_quality/StatefulPartitionedCall"^wine_type/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2L
$base_dense_1/StatefulPartitionedCall$base_dense_1/StatefulPartitionedCall2L
$base_dense_2/StatefulPartitionedCall$base_dense_2/StatefulPartitionedCall2L
$base_dense_3/StatefulPartitionedCall$base_dense_3/StatefulPartitionedCall2L
$wine_quality/StatefulPartitionedCall$wine_quality/StatefulPartitionedCall2F
!wine_type/StatefulPartitionedCall!wine_type/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
0
Ç
@__inference_model_layer_call_and_return_conditional_losses_60890

inputs>
+base_dense_1_matmul_readvariableop_resource:	;
,base_dense_1_biasadd_readvariableop_resource:	?
+base_dense_2_matmul_readvariableop_resource:
;
,base_dense_2_biasadd_readvariableop_resource:	>
+base_dense_3_matmul_readvariableop_resource:	@:
,base_dense_3_biasadd_readvariableop_resource:@:
(wine_type_matmul_readvariableop_resource:@7
)wine_type_biasadd_readvariableop_resource:=
+wine_quality_matmul_readvariableop_resource:@:
,wine_quality_biasadd_readvariableop_resource:
identity

identity_1¢#base_dense_1/BiasAdd/ReadVariableOp¢"base_dense_1/MatMul/ReadVariableOp¢#base_dense_2/BiasAdd/ReadVariableOp¢"base_dense_2/MatMul/ReadVariableOp¢#base_dense_3/BiasAdd/ReadVariableOp¢"base_dense_3/MatMul/ReadVariableOp¢#wine_quality/BiasAdd/ReadVariableOp¢"wine_quality/MatMul/ReadVariableOp¢ wine_type/BiasAdd/ReadVariableOp¢wine_type/MatMul/ReadVariableOp
"base_dense_1/MatMul/ReadVariableOpReadVariableOp+base_dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
base_dense_1/MatMulMatMulinputs*base_dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#base_dense_1/BiasAdd/ReadVariableOpReadVariableOp,base_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
base_dense_1/BiasAddBiasAddbase_dense_1/MatMul:product:0+base_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
base_dense_1/ReluRelubase_dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"base_dense_2/MatMul/ReadVariableOpReadVariableOp+base_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
base_dense_2/MatMulMatMulbase_dense_1/Relu:activations:0*base_dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#base_dense_2/BiasAdd/ReadVariableOpReadVariableOp,base_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
base_dense_2/BiasAddBiasAddbase_dense_2/MatMul:product:0+base_dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
base_dense_2/ReluRelubase_dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"base_dense_3/MatMul/ReadVariableOpReadVariableOp+base_dense_3_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
base_dense_3/MatMulMatMulbase_dense_2/Relu:activations:0*base_dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#base_dense_3/BiasAdd/ReadVariableOpReadVariableOp,base_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
base_dense_3/BiasAddBiasAddbase_dense_3/MatMul:product:0+base_dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
base_dense_3/ReluRelubase_dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
wine_type/MatMul/ReadVariableOpReadVariableOp(wine_type_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
wine_type/MatMulMatMulbase_dense_3/Relu:activations:0'wine_type/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 wine_type/BiasAdd/ReadVariableOpReadVariableOp)wine_type_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
wine_type/BiasAddBiasAddwine_type/MatMul:product:0(wine_type/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
wine_type/SigmoidSigmoidwine_type/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"wine_quality/MatMul/ReadVariableOpReadVariableOp+wine_quality_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
wine_quality/MatMulMatMulbase_dense_3/Relu:activations:0*wine_quality/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#wine_quality/BiasAdd/ReadVariableOpReadVariableOp,wine_quality_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
wine_quality/BiasAddBiasAddwine_quality/MatMul:product:0+wine_quality/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentitywine_quality/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf

Identity_1Identitywine_type/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
NoOpNoOp$^base_dense_1/BiasAdd/ReadVariableOp#^base_dense_1/MatMul/ReadVariableOp$^base_dense_2/BiasAdd/ReadVariableOp#^base_dense_2/MatMul/ReadVariableOp$^base_dense_3/BiasAdd/ReadVariableOp#^base_dense_3/MatMul/ReadVariableOp$^wine_quality/BiasAdd/ReadVariableOp#^wine_quality/MatMul/ReadVariableOp!^wine_type/BiasAdd/ReadVariableOp ^wine_type/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2J
#base_dense_1/BiasAdd/ReadVariableOp#base_dense_1/BiasAdd/ReadVariableOp2H
"base_dense_1/MatMul/ReadVariableOp"base_dense_1/MatMul/ReadVariableOp2J
#base_dense_2/BiasAdd/ReadVariableOp#base_dense_2/BiasAdd/ReadVariableOp2H
"base_dense_2/MatMul/ReadVariableOp"base_dense_2/MatMul/ReadVariableOp2J
#base_dense_3/BiasAdd/ReadVariableOp#base_dense_3/BiasAdd/ReadVariableOp2H
"base_dense_3/MatMul/ReadVariableOp"base_dense_3/MatMul/ReadVariableOp2J
#wine_quality/BiasAdd/ReadVariableOp#wine_quality/BiasAdd/ReadVariableOp2H
"wine_quality/MatMul/ReadVariableOp"wine_quality/MatMul/ReadVariableOp2D
 wine_type/BiasAdd/ReadVariableOp wine_type/BiasAdd/ReadVariableOp2B
wine_type/MatMul/ReadVariableOpwine_type/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê	
ø
G__inference_wine_quality_layer_call_and_return_conditional_losses_60969

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¬

@__inference_model_layer_call_and_return_conditional_losses_60693
input_1%
base_dense_1_60666:	!
base_dense_1_60668:	&
base_dense_2_60671:
!
base_dense_2_60673:	%
base_dense_3_60676:	@ 
base_dense_3_60678:@!
wine_type_60681:@
wine_type_60683:$
wine_quality_60686:@ 
wine_quality_60688:
identity

identity_1¢$base_dense_1/StatefulPartitionedCall¢$base_dense_2/StatefulPartitionedCall¢$base_dense_3/StatefulPartitionedCall¢$wine_quality/StatefulPartitionedCall¢!wine_type/StatefulPartitionedCallÿ
$base_dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_1base_dense_1_60666base_dense_1_60668*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_1_layer_call_and_return_conditional_losses_60402¥
$base_dense_2/StatefulPartitionedCallStatefulPartitionedCall-base_dense_1/StatefulPartitionedCall:output:0base_dense_2_60671base_dense_2_60673*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_2_layer_call_and_return_conditional_losses_60419¤
$base_dense_3/StatefulPartitionedCallStatefulPartitionedCall-base_dense_2/StatefulPartitionedCall:output:0base_dense_3_60676base_dense_3_60678*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_3_layer_call_and_return_conditional_losses_60436
!wine_type/StatefulPartitionedCallStatefulPartitionedCall-base_dense_3/StatefulPartitionedCall:output:0wine_type_60681wine_type_60683*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_wine_type_layer_call_and_return_conditional_losses_60453¤
$wine_quality/StatefulPartitionedCallStatefulPartitionedCall-base_dense_3/StatefulPartitionedCall:output:0wine_quality_60686wine_quality_60688*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_wine_quality_layer_call_and_return_conditional_losses_60469|
IdentityIdentity-wine_quality/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{

Identity_1Identity*wine_type/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^base_dense_1/StatefulPartitionedCall%^base_dense_2/StatefulPartitionedCall%^base_dense_3/StatefulPartitionedCall%^wine_quality/StatefulPartitionedCall"^wine_type/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2L
$base_dense_1/StatefulPartitionedCall$base_dense_1/StatefulPartitionedCall2L
$base_dense_2/StatefulPartitionedCall$base_dense_2/StatefulPartitionedCall2L
$base_dense_3/StatefulPartitionedCall$base_dense_3/StatefulPartitionedCall2L
$wine_quality/StatefulPartitionedCall$wine_quality/StatefulPartitionedCall2F
!wine_type/StatefulPartitionedCall!wine_type/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¦

ú
G__inference_base_dense_1_layer_call_and_return_conditional_losses_60910

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â

)__inference_wine_type_layer_call_fn_60978

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_wine_type_layer_call_and_return_conditional_losses_60453o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ê	
ø
G__inference_wine_quality_layer_call_and_return_conditional_losses_60469

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¦

ú
G__inference_base_dense_1_layer_call_and_return_conditional_losses_60402

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

,__inference_base_dense_1_layer_call_fn_60899

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_1_layer_call_and_return_conditional_losses_60402p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

,__inference_wine_quality_layer_call_fn_60959

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_wine_quality_layer_call_and_return_conditional_losses_60469o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
©

@__inference_model_layer_call_and_return_conditional_losses_60477

inputs%
base_dense_1_60403:	!
base_dense_1_60405:	&
base_dense_2_60420:
!
base_dense_2_60422:	%
base_dense_3_60437:	@ 
base_dense_3_60439:@!
wine_type_60454:@
wine_type_60456:$
wine_quality_60470:@ 
wine_quality_60472:
identity

identity_1¢$base_dense_1/StatefulPartitionedCall¢$base_dense_2/StatefulPartitionedCall¢$base_dense_3/StatefulPartitionedCall¢$wine_quality/StatefulPartitionedCall¢!wine_type/StatefulPartitionedCallþ
$base_dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsbase_dense_1_60403base_dense_1_60405*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_1_layer_call_and_return_conditional_losses_60402¥
$base_dense_2/StatefulPartitionedCallStatefulPartitionedCall-base_dense_1/StatefulPartitionedCall:output:0base_dense_2_60420base_dense_2_60422*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_2_layer_call_and_return_conditional_losses_60419¤
$base_dense_3/StatefulPartitionedCallStatefulPartitionedCall-base_dense_2/StatefulPartitionedCall:output:0base_dense_3_60437base_dense_3_60439*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_3_layer_call_and_return_conditional_losses_60436
!wine_type/StatefulPartitionedCallStatefulPartitionedCall-base_dense_3/StatefulPartitionedCall:output:0wine_type_60454wine_type_60456*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_wine_type_layer_call_and_return_conditional_losses_60453¤
$wine_quality/StatefulPartitionedCallStatefulPartitionedCall-base_dense_3/StatefulPartitionedCall:output:0wine_quality_60470wine_quality_60472*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_wine_quality_layer_call_and_return_conditional_losses_60469|
IdentityIdentity-wine_quality/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{

Identity_1Identity*wine_type/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^base_dense_1/StatefulPartitionedCall%^base_dense_2/StatefulPartitionedCall%^base_dense_3/StatefulPartitionedCall%^wine_quality/StatefulPartitionedCall"^wine_type/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2L
$base_dense_1/StatefulPartitionedCall$base_dense_1/StatefulPartitionedCall2L
$base_dense_2/StatefulPartitionedCall$base_dense_2/StatefulPartitionedCall2L
$base_dense_3/StatefulPartitionedCall$base_dense_3/StatefulPartitionedCall2L
$wine_quality/StatefulPartitionedCall$wine_quality/StatefulPartitionedCall2F
!wine_type/StatefulPartitionedCall!wine_type/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª

û
G__inference_base_dense_2_layer_call_and_return_conditional_losses_60419

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


õ
D__inference_wine_type_layer_call_and_return_conditional_losses_60989

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Í

%__inference_model_layer_call_fn_60502
input_1
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:
	unknown_7:@
	unknown_8:
identity

identity_1¢StatefulPartitionedCallÒ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_60477o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Ë

,__inference_base_dense_3_layer_call_fn_60939

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_3_layer_call_and_return_conditional_losses_60436o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
5
 	
 __inference__wrapped_model_60384
input_1D
1model_base_dense_1_matmul_readvariableop_resource:	A
2model_base_dense_1_biasadd_readvariableop_resource:	E
1model_base_dense_2_matmul_readvariableop_resource:
A
2model_base_dense_2_biasadd_readvariableop_resource:	D
1model_base_dense_3_matmul_readvariableop_resource:	@@
2model_base_dense_3_biasadd_readvariableop_resource:@@
.model_wine_type_matmul_readvariableop_resource:@=
/model_wine_type_biasadd_readvariableop_resource:C
1model_wine_quality_matmul_readvariableop_resource:@@
2model_wine_quality_biasadd_readvariableop_resource:
identity

identity_1¢)model/base_dense_1/BiasAdd/ReadVariableOp¢(model/base_dense_1/MatMul/ReadVariableOp¢)model/base_dense_2/BiasAdd/ReadVariableOp¢(model/base_dense_2/MatMul/ReadVariableOp¢)model/base_dense_3/BiasAdd/ReadVariableOp¢(model/base_dense_3/MatMul/ReadVariableOp¢)model/wine_quality/BiasAdd/ReadVariableOp¢(model/wine_quality/MatMul/ReadVariableOp¢&model/wine_type/BiasAdd/ReadVariableOp¢%model/wine_type/MatMul/ReadVariableOp
(model/base_dense_1/MatMul/ReadVariableOpReadVariableOp1model_base_dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
model/base_dense_1/MatMulMatMulinput_10model/base_dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model/base_dense_1/BiasAdd/ReadVariableOpReadVariableOp2model_base_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
model/base_dense_1/BiasAddBiasAdd#model/base_dense_1/MatMul:product:01model/base_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
model/base_dense_1/ReluRelu#model/base_dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(model/base_dense_2/MatMul/ReadVariableOpReadVariableOp1model_base_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¯
model/base_dense_2/MatMulMatMul%model/base_dense_1/Relu:activations:00model/base_dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model/base_dense_2/BiasAdd/ReadVariableOpReadVariableOp2model_base_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
model/base_dense_2/BiasAddBiasAdd#model/base_dense_2/MatMul:product:01model/base_dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
model/base_dense_2/ReluRelu#model/base_dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(model/base_dense_3/MatMul/ReadVariableOpReadVariableOp1model_base_dense_3_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0®
model/base_dense_3/MatMulMatMul%model/base_dense_2/Relu:activations:00model/base_dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)model/base_dense_3/BiasAdd/ReadVariableOpReadVariableOp2model_base_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¯
model/base_dense_3/BiasAddBiasAdd#model/base_dense_3/MatMul:product:01model/base_dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
model/base_dense_3/ReluRelu#model/base_dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%model/wine_type/MatMul/ReadVariableOpReadVariableOp.model_wine_type_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0¨
model/wine_type/MatMulMatMul%model/base_dense_3/Relu:activations:0-model/wine_type/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model/wine_type/BiasAdd/ReadVariableOpReadVariableOp/model_wine_type_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model/wine_type/BiasAddBiasAdd model/wine_type/MatMul:product:0.model/wine_type/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
model/wine_type/SigmoidSigmoid model/wine_type/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(model/wine_quality/MatMul/ReadVariableOpReadVariableOp1model_wine_quality_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0®
model/wine_quality/MatMulMatMul%model/base_dense_3/Relu:activations:00model/wine_quality/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model/wine_quality/BiasAdd/ReadVariableOpReadVariableOp2model_wine_quality_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
model/wine_quality/BiasAddBiasAdd#model/wine_quality/MatMul:product:01model/wine_quality/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
IdentityIdentity#model/wine_quality/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl

Identity_1Identitymodel/wine_type/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿó
NoOpNoOp*^model/base_dense_1/BiasAdd/ReadVariableOp)^model/base_dense_1/MatMul/ReadVariableOp*^model/base_dense_2/BiasAdd/ReadVariableOp)^model/base_dense_2/MatMul/ReadVariableOp*^model/base_dense_3/BiasAdd/ReadVariableOp)^model/base_dense_3/MatMul/ReadVariableOp*^model/wine_quality/BiasAdd/ReadVariableOp)^model/wine_quality/MatMul/ReadVariableOp'^model/wine_type/BiasAdd/ReadVariableOp&^model/wine_type/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2V
)model/base_dense_1/BiasAdd/ReadVariableOp)model/base_dense_1/BiasAdd/ReadVariableOp2T
(model/base_dense_1/MatMul/ReadVariableOp(model/base_dense_1/MatMul/ReadVariableOp2V
)model/base_dense_2/BiasAdd/ReadVariableOp)model/base_dense_2/BiasAdd/ReadVariableOp2T
(model/base_dense_2/MatMul/ReadVariableOp(model/base_dense_2/MatMul/ReadVariableOp2V
)model/base_dense_3/BiasAdd/ReadVariableOp)model/base_dense_3/BiasAdd/ReadVariableOp2T
(model/base_dense_3/MatMul/ReadVariableOp(model/base_dense_3/MatMul/ReadVariableOp2V
)model/wine_quality/BiasAdd/ReadVariableOp)model/wine_quality/BiasAdd/ReadVariableOp2T
(model/wine_quality/MatMul/ReadVariableOp(model/wine_quality/MatMul/ReadVariableOp2P
&model/wine_type/BiasAdd/ReadVariableOp&model/wine_type/BiasAdd/ReadVariableOp2N
%model/wine_type/MatMul/ReadVariableOp%model/wine_type/MatMul/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Ê

%__inference_model_layer_call_fn_60812

inputs
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:
	unknown_7:@
	unknown_8:
identity

identity_1¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_60611o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
0
Ç
@__inference_model_layer_call_and_return_conditional_losses_60851

inputs>
+base_dense_1_matmul_readvariableop_resource:	;
,base_dense_1_biasadd_readvariableop_resource:	?
+base_dense_2_matmul_readvariableop_resource:
;
,base_dense_2_biasadd_readvariableop_resource:	>
+base_dense_3_matmul_readvariableop_resource:	@:
,base_dense_3_biasadd_readvariableop_resource:@:
(wine_type_matmul_readvariableop_resource:@7
)wine_type_biasadd_readvariableop_resource:=
+wine_quality_matmul_readvariableop_resource:@:
,wine_quality_biasadd_readvariableop_resource:
identity

identity_1¢#base_dense_1/BiasAdd/ReadVariableOp¢"base_dense_1/MatMul/ReadVariableOp¢#base_dense_2/BiasAdd/ReadVariableOp¢"base_dense_2/MatMul/ReadVariableOp¢#base_dense_3/BiasAdd/ReadVariableOp¢"base_dense_3/MatMul/ReadVariableOp¢#wine_quality/BiasAdd/ReadVariableOp¢"wine_quality/MatMul/ReadVariableOp¢ wine_type/BiasAdd/ReadVariableOp¢wine_type/MatMul/ReadVariableOp
"base_dense_1/MatMul/ReadVariableOpReadVariableOp+base_dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
base_dense_1/MatMulMatMulinputs*base_dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#base_dense_1/BiasAdd/ReadVariableOpReadVariableOp,base_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
base_dense_1/BiasAddBiasAddbase_dense_1/MatMul:product:0+base_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
base_dense_1/ReluRelubase_dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"base_dense_2/MatMul/ReadVariableOpReadVariableOp+base_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
base_dense_2/MatMulMatMulbase_dense_1/Relu:activations:0*base_dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#base_dense_2/BiasAdd/ReadVariableOpReadVariableOp,base_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
base_dense_2/BiasAddBiasAddbase_dense_2/MatMul:product:0+base_dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
base_dense_2/ReluRelubase_dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"base_dense_3/MatMul/ReadVariableOpReadVariableOp+base_dense_3_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
base_dense_3/MatMulMatMulbase_dense_2/Relu:activations:0*base_dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#base_dense_3/BiasAdd/ReadVariableOpReadVariableOp,base_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
base_dense_3/BiasAddBiasAddbase_dense_3/MatMul:product:0+base_dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
base_dense_3/ReluRelubase_dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
wine_type/MatMul/ReadVariableOpReadVariableOp(wine_type_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
wine_type/MatMulMatMulbase_dense_3/Relu:activations:0'wine_type/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 wine_type/BiasAdd/ReadVariableOpReadVariableOp)wine_type_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
wine_type/BiasAddBiasAddwine_type/MatMul:product:0(wine_type/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
wine_type/SigmoidSigmoidwine_type/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"wine_quality/MatMul/ReadVariableOpReadVariableOp+wine_quality_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
wine_quality/MatMulMatMulbase_dense_3/Relu:activations:0*wine_quality/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#wine_quality/BiasAdd/ReadVariableOpReadVariableOp,wine_quality_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
wine_quality/BiasAddBiasAddwine_quality/MatMul:product:0+wine_quality/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentitywine_quality/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf

Identity_1Identitywine_type/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
NoOpNoOp$^base_dense_1/BiasAdd/ReadVariableOp#^base_dense_1/MatMul/ReadVariableOp$^base_dense_2/BiasAdd/ReadVariableOp#^base_dense_2/MatMul/ReadVariableOp$^base_dense_3/BiasAdd/ReadVariableOp#^base_dense_3/MatMul/ReadVariableOp$^wine_quality/BiasAdd/ReadVariableOp#^wine_quality/MatMul/ReadVariableOp!^wine_type/BiasAdd/ReadVariableOp ^wine_type/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2J
#base_dense_1/BiasAdd/ReadVariableOp#base_dense_1/BiasAdd/ReadVariableOp2H
"base_dense_1/MatMul/ReadVariableOp"base_dense_1/MatMul/ReadVariableOp2J
#base_dense_2/BiasAdd/ReadVariableOp#base_dense_2/BiasAdd/ReadVariableOp2H
"base_dense_2/MatMul/ReadVariableOp"base_dense_2/MatMul/ReadVariableOp2J
#base_dense_3/BiasAdd/ReadVariableOp#base_dense_3/BiasAdd/ReadVariableOp2H
"base_dense_3/MatMul/ReadVariableOp"base_dense_3/MatMul/ReadVariableOp2J
#wine_quality/BiasAdd/ReadVariableOp#wine_quality/BiasAdd/ReadVariableOp2H
"wine_quality/MatMul/ReadVariableOp"wine_quality/MatMul/ReadVariableOp2D
 wine_type/BiasAdd/ReadVariableOp wine_type/BiasAdd/ReadVariableOp2B
wine_type/MatMul/ReadVariableOpwine_type/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

@__inference_model_layer_call_and_return_conditional_losses_60723
input_1%
base_dense_1_60696:	!
base_dense_1_60698:	&
base_dense_2_60701:
!
base_dense_2_60703:	%
base_dense_3_60706:	@ 
base_dense_3_60708:@!
wine_type_60711:@
wine_type_60713:$
wine_quality_60716:@ 
wine_quality_60718:
identity

identity_1¢$base_dense_1/StatefulPartitionedCall¢$base_dense_2/StatefulPartitionedCall¢$base_dense_3/StatefulPartitionedCall¢$wine_quality/StatefulPartitionedCall¢!wine_type/StatefulPartitionedCallÿ
$base_dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_1base_dense_1_60696base_dense_1_60698*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_1_layer_call_and_return_conditional_losses_60402¥
$base_dense_2/StatefulPartitionedCallStatefulPartitionedCall-base_dense_1/StatefulPartitionedCall:output:0base_dense_2_60701base_dense_2_60703*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_2_layer_call_and_return_conditional_losses_60419¤
$base_dense_3/StatefulPartitionedCallStatefulPartitionedCall-base_dense_2/StatefulPartitionedCall:output:0base_dense_3_60706base_dense_3_60708*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_3_layer_call_and_return_conditional_losses_60436
!wine_type/StatefulPartitionedCallStatefulPartitionedCall-base_dense_3/StatefulPartitionedCall:output:0wine_type_60711wine_type_60713*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_wine_type_layer_call_and_return_conditional_losses_60453¤
$wine_quality/StatefulPartitionedCallStatefulPartitionedCall-base_dense_3/StatefulPartitionedCall:output:0wine_quality_60716wine_quality_60718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_wine_quality_layer_call_and_return_conditional_losses_60469|
IdentityIdentity-wine_quality/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{

Identity_1Identity*wine_type/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^base_dense_1/StatefulPartitionedCall%^base_dense_2/StatefulPartitionedCall%^base_dense_3/StatefulPartitionedCall%^wine_quality/StatefulPartitionedCall"^wine_type/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2L
$base_dense_1/StatefulPartitionedCall$base_dense_1/StatefulPartitionedCall2L
$base_dense_2/StatefulPartitionedCall$base_dense_2/StatefulPartitionedCall2L
$base_dense_3/StatefulPartitionedCall$base_dense_3/StatefulPartitionedCall2L
$wine_quality/StatefulPartitionedCall$wine_quality/StatefulPartitionedCall2F
!wine_type/StatefulPartitionedCall!wine_type/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Ï

,__inference_base_dense_2_layer_call_fn_60919

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_base_dense_2_layer_call_and_return_conditional_losses_60419p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

%__inference_model_layer_call_fn_60663
input_1
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:
	unknown_7:@
	unknown_8:
identity

identity_1¢StatefulPartitionedCallÒ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_60611o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¢

ù
G__inference_base_dense_3_layer_call_and_return_conditional_losses_60950

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢

ù
G__inference_base_dense_3_layer_call_and_return_conditional_losses_60436

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*î
serving_defaultÚ
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ@
wine_quality0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ=
	wine_type0
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ü
½
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias"
_tf_keras_layer
»
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias"
_tf_keras_layer
»
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias"
_tf_keras_layer
»
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias"
_tf_keras_layer
f
0
1
2
 3
'4
(5
/6
07
78
89"
trackable_list_wrapper
f
0
1
2
 3
'4
(5
/6
07
78
89"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ê
>trace_0
?trace_1
@trace_2
Atrace_32ß
%__inference_model_layer_call_fn_60502
%__inference_model_layer_call_fn_60785
%__inference_model_layer_call_fn_60812
%__inference_model_layer_call_fn_60663À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z>trace_0z?trace_1z@trace_2zAtrace_3
¶
Btrace_0
Ctrace_1
Dtrace_2
Etrace_32Ë
@__inference_model_layer_call_and_return_conditional_losses_60851
@__inference_model_layer_call_and_return_conditional_losses_60890
@__inference_model_layer_call_and_return_conditional_losses_60693
@__inference_model_layer_call_and_return_conditional_losses_60723À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zBtrace_0zCtrace_1zDtrace_2zEtrace_3
ËBÈ
 __inference__wrapped_model_60384input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ê
Fiter
	Gdecay
Hlearning_rate
Imomentum
Jrho
rms
rms
rms
 rms
'rms
(rms
/rms
0rms
7rms
8rms"
	optimizer
 "
trackable_dict_wrapper
,
Kserving_default"
signature_map
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
­
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ð
Qtrace_02Ó
,__inference_base_dense_1_layer_call_fn_60899¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zQtrace_0

Rtrace_02î
G__inference_base_dense_1_layer_call_and_return_conditional_losses_60910¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zRtrace_0
&:$	2base_dense_1/kernel
 :2base_dense_1/bias
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
­
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ð
Xtrace_02Ó
,__inference_base_dense_2_layer_call_fn_60919¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zXtrace_0

Ytrace_02î
G__inference_base_dense_2_layer_call_and_return_conditional_losses_60930¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zYtrace_0
':%
2base_dense_2/kernel
 :2base_dense_2/bias
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
­
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
ð
_trace_02Ó
,__inference_base_dense_3_layer_call_fn_60939¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z_trace_0

`trace_02î
G__inference_base_dense_3_layer_call_and_return_conditional_losses_60950¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z`trace_0
&:$	@2base_dense_3/kernel
:@2base_dense_3/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
ð
ftrace_02Ó
,__inference_wine_quality_layer_call_fn_60959¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zftrace_0

gtrace_02î
G__inference_wine_quality_layer_call_and_return_conditional_losses_60969¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zgtrace_0
%:#@2wine_quality/kernel
:2wine_quality/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
í
mtrace_02Ð
)__inference_wine_type_layer_call_fn_60978¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zmtrace_0

ntrace_02ë
D__inference_wine_type_layer_call_and_return_conditional_losses_60989¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zntrace_0
": @2wine_type/kernel
:2wine_type/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
C
o0
p1
q2
r3
s4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
øBõ
%__inference_model_layer_call_fn_60502input_1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
÷Bô
%__inference_model_layer_call_fn_60785inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
÷Bô
%__inference_model_layer_call_fn_60812inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
øBõ
%__inference_model_layer_call_fn_60663input_1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
@__inference_model_layer_call_and_return_conditional_losses_60851inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
@__inference_model_layer_call_and_return_conditional_losses_60890inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
@__inference_model_layer_call_and_return_conditional_losses_60693input_1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
@__inference_model_layer_call_and_return_conditional_losses_60723input_1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
ÊBÇ
#__inference_signature_wrapper_60758input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
àBÝ
,__inference_base_dense_1_layer_call_fn_60899inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_base_dense_1_layer_call_and_return_conditional_losses_60910inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
àBÝ
,__inference_base_dense_2_layer_call_fn_60919inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_base_dense_2_layer_call_and_return_conditional_losses_60930inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
àBÝ
,__inference_base_dense_3_layer_call_fn_60939inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_base_dense_3_layer_call_and_return_conditional_losses_60950inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
àBÝ
,__inference_wine_quality_layer_call_fn_60959inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_wine_quality_layer_call_and_return_conditional_losses_60969inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ÝBÚ
)__inference_wine_type_layer_call_fn_60978inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_wine_type_layer_call_and_return_conditional_losses_60989inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
N
t	variables
u	keras_api
	vtotal
	wcount"
_tf_keras_metric
N
x	variables
y	keras_api
	ztotal
	{count"
_tf_keras_metric
N
|	variables
}	keras_api
	~total
	count"
_tf_keras_metric
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
.
v0
w1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
:  (2total
:  (2count
.
z0
{1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
:  (2total
:  (2count
.
~0
1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0:.	2RMSprop/base_dense_1/kernel/rms
*:(2RMSprop/base_dense_1/bias/rms
1:/
2RMSprop/base_dense_2/kernel/rms
*:(2RMSprop/base_dense_2/bias/rms
0:.	@2RMSprop/base_dense_3/kernel/rms
):'@2RMSprop/base_dense_3/bias/rms
/:-@2RMSprop/wine_quality/kernel/rms
):'2RMSprop/wine_quality/bias/rms
,:*@2RMSprop/wine_type/kernel/rms
&:$2RMSprop/wine_type/bias/rmsÒ
 __inference__wrapped_model_60384­
 '(78/00¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "mªj
6
wine_quality&#
wine_qualityÿÿÿÿÿÿÿÿÿ
0
	wine_type# 
	wine_typeÿÿÿÿÿÿÿÿÿ¨
G__inference_base_dense_1_layer_call_and_return_conditional_losses_60910]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_base_dense_1_layer_call_fn_60899P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ©
G__inference_base_dense_2_layer_call_and_return_conditional_losses_60930^ 0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_base_dense_2_layer_call_fn_60919Q 0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¨
G__inference_base_dense_3_layer_call_and_return_conditional_losses_60950]'(0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
,__inference_base_dense_3_layer_call_fn_60939P'(0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@Ø
@__inference_model_layer_call_and_return_conditional_losses_60693
 '(78/08¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 Ø
@__inference_model_layer_call_and_return_conditional_losses_60723
 '(78/08¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 ×
@__inference_model_layer_call_and_return_conditional_losses_60851
 '(78/07¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 ×
@__inference_model_layer_call_and_return_conditional_losses_60890
 '(78/07¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 ¯
%__inference_model_layer_call_fn_60502
 '(78/08¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ¯
%__inference_model_layer_call_fn_60663
 '(78/08¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ®
%__inference_model_layer_call_fn_60785
 '(78/07¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ®
%__inference_model_layer_call_fn_60812
 '(78/07¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿà
#__inference_signature_wrapper_60758¸
 '(78/0;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ"mªj
6
wine_quality&#
wine_qualityÿÿÿÿÿÿÿÿÿ
0
	wine_type# 
	wine_typeÿÿÿÿÿÿÿÿÿ§
G__inference_wine_quality_layer_call_and_return_conditional_losses_60969\/0/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_wine_quality_layer_call_fn_60959O/0/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_wine_type_layer_call_and_return_conditional_losses_60989\78/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_wine_type_layer_call_fn_60978O78/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ