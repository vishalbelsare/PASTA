я
Ђѓ
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
О
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8Ћ
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:	*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0

encoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*&
shared_nameencoder_output/kernel

)encoder_output/kernel/Read/ReadVariableOpReadVariableOpencoder_output/kernel*
_output_shapes

:0*
dtype0
~
encoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameencoder_output/bias
w
'encoder_output/bias/Read/ReadVariableOpReadVariableOpencoder_output/bias*
_output_shapes
:*
dtype0
z
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

:*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:*
dtype0
z
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_24/kernel
s
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes

:*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:*
dtype0
z
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_26/kernel
s
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes

:*
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
:*
dtype0
z
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_28/kernel
s
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes

:*
dtype0
r
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_28/bias
k
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes
:*
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

:*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:*
dtype0
z
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_27/kernel
s
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes

:d*
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:d*
dtype0
z
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0* 
shared_namedense_29/kernel
s
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel*
_output_shapes

:0*
dtype0
r
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_namedense_29/bias
k
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes
:0*
dtype0

NoOpNoOp
Лg
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*іf
valueьfBщf Bтf
А
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer_with_weights-8
layer-16
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
 
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
 trainable_variables
!	variables
"	keras_api
R
#regularization_losses
$trainable_variables
%	variables
&	keras_api
R
'regularization_losses
(trainable_variables
)	variables
*	keras_api
h

+kernel
,bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
h

1kernel
2bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
 
R
7regularization_losses
8trainable_variables
9	variables
:	keras_api
R
;regularization_losses
<trainable_variables
=	variables
>	keras_api
h

?kernel
@bias
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
h

Ekernel
Fbias
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
h

Kkernel
Lbias
Mregularization_losses
Ntrainable_variables
O	variables
P	keras_api
R
Qregularization_losses
Rtrainable_variables
S	variables
T	keras_api
h

Ukernel
Vbias
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
Т
[layer-0
\layer_with_weights-0
\layer-1
]layer_with_weights-1
]layer-2
^layer_with_weights-2
^layer-3
_layer_with_weights-3
_layer-4
`layer_with_weights-4
`layer-5
alayer_with_weights-5
alayer-6
blayer_with_weights-6
blayer-7
clayer-8
dlayer-9
elayer-10
flayer-11
glayer-12
hlayer-13
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
 
ц
0
1
2
3
+4
,5
16
27
?8
@9
E10
F11
K12
L13
U14
V15
m16
n17
o18
p19
q20
r21
s22
t23
u24
v25
w26
x27
y28
z29
ц
0
1
2
3
+4
,5
16
27
?8
@9
E10
F11
K12
L13
U14
V15
m16
n17
o18
p19
q20
r21
s22
t23
u24
v25
w26
x27
y28
z29
­

{layers
regularization_losses
trainable_variables
|metrics
}non_trainable_variables
~layer_metrics
	variables
layer_regularization_losses
 
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
В
layers
regularization_losses
trainable_variables
metrics
non_trainable_variables
layer_metrics
	variables
 layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
В
layers
regularization_losses
 trainable_variables
metrics
non_trainable_variables
layer_metrics
!	variables
 layer_regularization_losses
 
 
 
В
layers
#regularization_losses
$trainable_variables
metrics
non_trainable_variables
layer_metrics
%	variables
 layer_regularization_losses
 
 
 
В
layers
'regularization_losses
(trainable_variables
metrics
non_trainable_variables
layer_metrics
)	variables
 layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
В
layers
-regularization_losses
.trainable_variables
metrics
non_trainable_variables
layer_metrics
/	variables
 layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

10
21

10
21
В
layers
3regularization_losses
4trainable_variables
metrics
non_trainable_variables
layer_metrics
5	variables
 layer_regularization_losses
 
 
 
В
layers
7regularization_losses
8trainable_variables
metrics
 non_trainable_variables
Ёlayer_metrics
9	variables
 Ђlayer_regularization_losses
 
 
 
В
Ѓlayers
;regularization_losses
<trainable_variables
Єmetrics
Ѕnon_trainable_variables
Іlayer_metrics
=	variables
 Їlayer_regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
@1

?0
@1
В
Јlayers
Aregularization_losses
Btrainable_variables
Љmetrics
Њnon_trainable_variables
Ћlayer_metrics
C	variables
 Ќlayer_regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

E0
F1

E0
F1
В
­layers
Gregularization_losses
Htrainable_variables
Ўmetrics
Џnon_trainable_variables
Аlayer_metrics
I	variables
 Бlayer_regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1

K0
L1
В
Вlayers
Mregularization_losses
Ntrainable_variables
Гmetrics
Дnon_trainable_variables
Еlayer_metrics
O	variables
 Жlayer_regularization_losses
 
 
 
В
Зlayers
Qregularization_losses
Rtrainable_variables
Иmetrics
Йnon_trainable_variables
Кlayer_metrics
S	variables
 Лlayer_regularization_losses
a_
VARIABLE_VALUEencoder_output/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEencoder_output/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1

U0
V1
В
Мlayers
Wregularization_losses
Xtrainable_variables
Нmetrics
Оnon_trainable_variables
Пlayer_metrics
Y	variables
 Рlayer_regularization_losses

С_init_input_shape
l

mkernel
nbias
Тregularization_losses
Уtrainable_variables
Ф	variables
Х	keras_api
l

okernel
pbias
Цregularization_losses
Чtrainable_variables
Ш	variables
Щ	keras_api
l

qkernel
rbias
Ъregularization_losses
Ыtrainable_variables
Ь	variables
Э	keras_api
l

skernel
tbias
Юregularization_losses
Яtrainable_variables
а	variables
б	keras_api
l

ukernel
vbias
вregularization_losses
гtrainable_variables
д	variables
е	keras_api
l

wkernel
xbias
жregularization_losses
зtrainable_variables
и	variables
й	keras_api
l

ykernel
zbias
кregularization_losses
лtrainable_variables
м	variables
н	keras_api
V
оregularization_losses
пtrainable_variables
р	variables
с	keras_api
V
тregularization_losses
уtrainable_variables
ф	variables
х	keras_api
V
цregularization_losses
чtrainable_variables
ш	variables
щ	keras_api
V
ъregularization_losses
ыtrainable_variables
ь	variables
э	keras_api
V
юregularization_losses
яtrainable_variables
№	variables
ё	keras_api
V
ђregularization_losses
ѓtrainable_variables
є	variables
ѕ	keras_api
 
f
m0
n1
o2
p3
q4
r5
s6
t7
u8
v9
w10
x11
y12
z13
f
m0
n1
o2
p3
q4
r5
s6
t7
u8
v9
w10
x11
y12
z13
В
іlayers
iregularization_losses
jtrainable_variables
їmetrics
јnon_trainable_variables
љlayer_metrics
k	variables
 њlayer_regularization_losses
VT
VARIABLE_VALUEdense_23/kernel1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_23/bias1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_24/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_24/bias1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_26/kernel1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_26/bias1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_28/kernel1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_28/bias1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_25/kernel1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_25/bias1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_27/kernel1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_27/bias1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_29/kernel1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_29/bias1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUE
~
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
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

m0
n1

m0
n1
Е
ћlayers
Тregularization_losses
Уtrainable_variables
ќmetrics
§non_trainable_variables
ўlayer_metrics
Ф	variables
 џlayer_regularization_losses
 

o0
p1

o0
p1
Е
layers
Цregularization_losses
Чtrainable_variables
metrics
non_trainable_variables
layer_metrics
Ш	variables
 layer_regularization_losses
 

q0
r1

q0
r1
Е
layers
Ъregularization_losses
Ыtrainable_variables
metrics
non_trainable_variables
layer_metrics
Ь	variables
 layer_regularization_losses
 

s0
t1

s0
t1
Е
layers
Юregularization_losses
Яtrainable_variables
metrics
non_trainable_variables
layer_metrics
а	variables
 layer_regularization_losses
 

u0
v1

u0
v1
Е
layers
вregularization_losses
гtrainable_variables
metrics
non_trainable_variables
layer_metrics
д	variables
 layer_regularization_losses
 

w0
x1

w0
x1
Е
layers
жregularization_losses
зtrainable_variables
metrics
non_trainable_variables
layer_metrics
и	variables
 layer_regularization_losses
 

y0
z1

y0
z1
Е
layers
кregularization_losses
лtrainable_variables
metrics
non_trainable_variables
layer_metrics
м	variables
 layer_regularization_losses
 
 
 
Е
layers
оregularization_losses
пtrainable_variables
metrics
 non_trainable_variables
Ёlayer_metrics
р	variables
 Ђlayer_regularization_losses
 
 
 
Е
Ѓlayers
тregularization_losses
уtrainable_variables
Єmetrics
Ѕnon_trainable_variables
Іlayer_metrics
ф	variables
 Їlayer_regularization_losses
 
 
 
Е
Јlayers
цregularization_losses
чtrainable_variables
Љmetrics
Њnon_trainable_variables
Ћlayer_metrics
ш	variables
 Ќlayer_regularization_losses
 
 
 
Е
­layers
ъregularization_losses
ыtrainable_variables
Ўmetrics
Џnon_trainable_variables
Аlayer_metrics
ь	variables
 Бlayer_regularization_losses
 
 
 
Е
Вlayers
юregularization_losses
яtrainable_variables
Гmetrics
Дnon_trainable_variables
Еlayer_metrics
№	variables
 Жlayer_regularization_losses
 
 
 
Е
Зlayers
ђregularization_losses
ѓtrainable_variables
Иmetrics
Йnon_trainable_variables
Кlayer_metrics
є	variables
 Лlayer_regularization_losses
f
[0
\1
]2
^3
_4
`5
a6
b7
c8
d9
e10
f11
g12
h13
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
z
serving_default_input_1Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_input_2Placeholder*/
_output_shapes
:џџџџџџџџџ
*
dtype0*$
shape:џџџџџџџџџ


serving_default_input_3Placeholder*/
_output_shapes
:џџџџџџџџџ*
dtype0*$
shape:џџџџџџџџџ
Н
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2serving_default_input_3conv2d_2/kernelconv2d_2/biasconv2d/kernelconv2d/biasconv2d_3/kernelconv2d_3/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasencoder_output/kernelencoder_output/biasdense_23/kerneldense_23/biasdense_28/kerneldense_28/biasdense_26/kerneldense_26/biasdense_24/kerneldense_24/biasdense_29/kerneldense_29/biasdense_27/kerneldense_27/biasdense_25/kerneldense_25/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*@
_read_only_resource_inputs"
 	
 *0
config_proto 

CPU

GPU2*0J 8 */
f*R(
&__inference_signature_wrapper_36936474
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
є

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp)encoder_output/kernel/Read/ReadVariableOp'encoder_output/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp#dense_29/kernel/Read/ReadVariableOp!dense_29/bias/Read/ReadVariableOpConst*+
Tin$
"2 *
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
GPU2*0J 8 **
f%R#
!__inference__traced_save_36937742

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_2/kernelconv2d_2/biasconv2d_1/kernelconv2d_1/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasencoder_output/kernelencoder_output/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/biasdense_26/kerneldense_26/biasdense_28/kerneldense_28/biasdense_25/kerneldense_25/biasdense_27/kerneldense_27/biasdense_29/kerneldense_29/bias**
Tin#
!2*
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
GPU2*0J 8 *-
f(R&
$__inference__traced_restore_36937842ья

ї
F__inference_dense_26_layer_call_and_return_conditional_losses_36937460

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ч
c
G__inference_flatten_1_layer_call_and_return_conditional_losses_36935638

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


)__inference_conv2d_layer_call_fn_36936927

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_369355802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
э
џ
F__inference_conv2d_3_layer_call_and_return_conditional_losses_36935609

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
х
H
,__inference_softmax_1_layer_call_fn_36937610

inputs
identityа
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_softmax_1_layer_call_and_return_conditional_losses_369351362
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
:W S
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
х
a
E__inference_softmax_layer_call_and_return_conditional_losses_36935143

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
n
ў

E__inference_decoder_layer_call_and_return_conditional_losses_36937314

inputs9
'dense_23_matmul_readvariableop_resource:6
(dense_23_biasadd_readvariableop_resource:9
'dense_28_matmul_readvariableop_resource:6
(dense_28_biasadd_readvariableop_resource:9
'dense_26_matmul_readvariableop_resource:6
(dense_26_biasadd_readvariableop_resource:9
'dense_24_matmul_readvariableop_resource:6
(dense_24_biasadd_readvariableop_resource:9
'dense_29_matmul_readvariableop_resource:06
(dense_29_biasadd_readvariableop_resource:09
'dense_27_matmul_readvariableop_resource:d6
(dense_27_biasadd_readvariableop_resource:d9
'dense_25_matmul_readvariableop_resource:6
(dense_25_biasadd_readvariableop_resource:
identity

identity_1

identity_2Ђdense_23/BiasAdd/ReadVariableOpЂdense_23/MatMul/ReadVariableOpЂdense_24/BiasAdd/ReadVariableOpЂdense_24/MatMul/ReadVariableOpЂdense_25/BiasAdd/ReadVariableOpЂdense_25/MatMul/ReadVariableOpЂdense_26/BiasAdd/ReadVariableOpЂdense_26/MatMul/ReadVariableOpЂdense_27/BiasAdd/ReadVariableOpЂdense_27/MatMul/ReadVariableOpЂdense_28/BiasAdd/ReadVariableOpЂdense_28/MatMul/ReadVariableOpЂdense_29/BiasAdd/ReadVariableOpЂdense_29/MatMul/ReadVariableOpЈ
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_23/MatMul/ReadVariableOp
dense_23/MatMulMatMulinputs&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/MatMulЇ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpЅ
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/BiasAdds
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/ReluЈ
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_28/MatMul/ReadVariableOpЃ
dense_28/MatMulMatMuldense_23/Relu:activations:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_28/MatMulЇ
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_28/BiasAdd/ReadVariableOpЅ
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_28/BiasAdds
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_28/ReluЈ
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_26/MatMul/ReadVariableOpЃ
dense_26/MatMulMatMuldense_23/Relu:activations:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/MatMulЇ
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOpЅ
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/BiasAdds
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/ReluЈ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_24/MatMul/ReadVariableOpЃ
dense_24/MatMulMatMuldense_23/Relu:activations:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_24/MatMulЇ
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_24/BiasAdd/ReadVariableOpЅ
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_24/BiasAdds
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_24/ReluЈ
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

:0*
dtype02 
dense_29/MatMul/ReadVariableOpЃ
dense_29/MatMulMatMuldense_28/Relu:activations:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02
dense_29/MatMulЇ
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02!
dense_29/BiasAdd/ReadVariableOpЅ
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02
dense_29/BiasAdds
dense_29/ReluReludense_29/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ02
dense_29/ReluЈ
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_27/MatMul/ReadVariableOpЃ
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_27/MatMulЇ
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_27/BiasAdd/ReadVariableOpЅ
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_27/BiasAdds
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_27/ReluЈ
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_25/MatMul/ReadVariableOpЃ
dense_25/MatMulMatMuldense_24/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_25/MatMulЇ
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_25/BiasAdd/ReadVariableOpЅ
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_25/BiasAdds
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_25/Reluo
reshape_12/ShapeShapedense_29/Relu:activations:0*
T0*
_output_shapes
:2
reshape_12/Shape
reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_12/strided_slice/stack
 reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_1
 reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_2Є
reshape_12/strided_sliceStridedSlicereshape_12/Shape:output:0'reshape_12/strided_slice/stack:output:0)reshape_12/strided_slice/stack_1:output:0)reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_12/strided_slicez
reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/1z
reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/2z
reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/3ќ
reshape_12/Reshape/shapePack!reshape_12/strided_slice:output:0#reshape_12/Reshape/shape/1:output:0#reshape_12/Reshape/shape/2:output:0#reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_12/Reshape/shape­
reshape_12/ReshapeReshapedense_29/Relu:activations:0!reshape_12/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
reshape_12/Reshapeo
reshape_11/ShapeShapedense_27/Relu:activations:0*
T0*
_output_shapes
:2
reshape_11/Shape
reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_11/strided_slice/stack
 reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_1
 reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_2Є
reshape_11/strided_sliceStridedSlicereshape_11/Shape:output:0'reshape_11/strided_slice/stack:output:0)reshape_11/strided_slice/stack_1:output:0)reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_11/strided_slicez
reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/1z
reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/2z
reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
2
reshape_11/Reshape/shape/3ќ
reshape_11/Reshape/shapePack!reshape_11/strided_slice:output:0#reshape_11/Reshape/shape/1:output:0#reshape_11/Reshape/shape/2:output:0#reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_11/Reshape/shape­
reshape_11/ReshapeReshapedense_27/Relu:activations:0!reshape_11/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2
reshape_11/Reshapeo
reshape_10/ShapeShapedense_25/Relu:activations:0*
T0*
_output_shapes
:2
reshape_10/Shape
reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_10/strided_slice/stack
 reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_1
 reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_2Є
reshape_10/strided_sliceStridedSlicereshape_10/Shape:output:0'reshape_10/strided_slice/stack:output:0)reshape_10/strided_slice/stack_1:output:0)reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_10/strided_slicez
reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_10/Reshape/shape/1В
reshape_10/Reshape/shapePack!reshape_10/strided_slice:output:0#reshape_10/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_10/Reshape/shapeЅ
reshape_10/ReshapeReshapedense_25/Relu:activations:0!reshape_10/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
reshape_10/Reshape
softmax_2/SoftmaxSoftmaxreshape_12/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
softmax_2/Softmax
softmax_1/SoftmaxSoftmaxreshape_11/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2
softmax_1/Softmax|
softmax/SoftmaxSoftmaxreshape_10/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
softmax/Softmaxt
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identitysoftmax_1/Softmax:softmax:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identitysoftmax_2/Softmax:softmax:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2Ѓ
NoOpNoOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : : : 2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ї
F__inference_dense_27_layer_call_and_return_conditional_losses_36935055

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
х
a
E__inference_flatten_layer_call_and_return_conditional_losses_36935646

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_reshape_11_layer_call_and_return_conditional_losses_36935108

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
2
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs

ї
F__inference_dense_23_layer_call_and_return_conditional_losses_36934970

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

є
C__inference_dense_layer_call_and_return_conditional_losses_36935659

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ
џ
*__inference_decoder_layer_call_fn_36935447
input_6
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:0
	unknown_8:0
	unknown_9:d

unknown_10:d

unknown_11:

unknown_12:
identity

identity_1

identity_2ЂStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_decoder_layer_call_and_return_conditional_losses_369353752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_6
M

H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936317
input_1
input_2
input_3+
conv2d_2_36936238:
conv2d_2_36936240:)
conv2d_36936243:
conv2d_36936245:+
conv2d_3_36936250:
conv2d_3_36936252:+
conv2d_1_36936255:	
conv2d_1_36936257: 
dense_36936262:
dense_36936264:"
dense_1_36936267:
dense_1_36936269:"
dense_2_36936272:
dense_2_36936274:)
encoder_output_36936278:0%
encoder_output_36936280:"
decoder_36936283:
decoder_36936285:"
decoder_36936287:
decoder_36936289:"
decoder_36936291:
decoder_36936293:"
decoder_36936295:
decoder_36936297:"
decoder_36936299:0
decoder_36936301:0"
decoder_36936303:d
decoder_36936305:d"
decoder_36936307:
decoder_36936309:
identity

identity_1

identity_2Ђconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂdecoder/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂ&encoder_output/StatefulPartitionedCallІ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_2_36936238conv2d_2_36936240*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_369355632"
 conv2d_2/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_36936243conv2d_36936245*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_369355802 
conv2d/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_369355902!
max_pooling2d_1/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_369355962
max_pooling2d/PartitionedCallЧ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_3_36936250conv2d_3_36936252*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_369356092"
 conv2d_3/StatefulPartitionedCallХ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_36936255conv2d_1_36936257*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_369356262"
 conv2d_1/StatefulPartitionedCallџ
flatten_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_369356382
flatten_1/PartitionedCallљ
flatten/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_369356462
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_36936262dense_36936264*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_369356592
dense/StatefulPartitionedCallВ
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_36936267dense_1_36936269*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_369356762!
dense_1/StatefulPartitionedCallД
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_36936272dense_2_36936274*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_369356932!
dense_2/StatefulPartitionedCallо
concatenate_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0(dense_1/StatefulPartitionedCall:output:0(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_369357072
concatenate_2/PartitionedCallл
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0encoder_output_36936278encoder_output_36936280*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_encoder_output_layer_call_and_return_conditional_losses_369357192(
&encoder_output/StatefulPartitionedCallщ
decoder/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_36936283decoder_36936285decoder_36936287decoder_36936289decoder_36936291decoder_36936293decoder_36936295decoder_36936297decoder_36936299decoder_36936301decoder_36936303decoder_36936305decoder_36936307decoder_36936309*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_decoder_layer_call_and_return_conditional_losses_369351482!
decoder/StatefulPartitionedCall
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity(decoder/StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^decoder/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ

!
_user_specified_name	input_2:XT
/
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_3
Ё
 
+__inference_conv2d_2_layer_call_fn_36936947

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_369355632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ
џ
*__inference_decoder_layer_call_fn_36935183
input_6
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:0
	unknown_8:0
	unknown_9:d

unknown_10:d

unknown_11:

unknown_12:
identity

identity_1

identity_2ЂStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_decoder_layer_call_and_return_conditional_losses_369351482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_6

§
D__inference_conv2d_layer_call_and_return_conditional_losses_36935580

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЛ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
data_formatNCHW*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
data_formatNCHW2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ	2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ	2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

ї
F__inference_dense_27_layer_call_and_return_conditional_losses_36937520

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
х
H
,__inference_softmax_2_layer_call_fn_36937620

inputs
identityа
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_softmax_2_layer_call_and_return_conditional_losses_369351292
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_reshape_12_layer_call_and_return_conditional_losses_36937595

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ0:O K
'
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
х
a
E__inference_softmax_layer_call_and_return_conditional_losses_36937605

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Н
g
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_36935596

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ	*
ksize
*
paddingSAME*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ	:W S
/
_output_shapes
:џџџџџџџџџ	
 
_user_specified_nameinputs
з
I
-__inference_reshape_12_layer_call_fn_36937581

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_12_layer_call_and_return_conditional_losses_369350922
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ0:O K
'
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs

ї
F__inference_dense_23_layer_call_and_return_conditional_losses_36937420

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
б
F
*__inference_flatten_layer_call_fn_36937043

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_369356462
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
щ

K__inference_concatenate_2_layer_call_and_return_conditional_losses_36937135
inputs_0
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ02
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2

џ
F__inference_conv2d_2_layer_call_and_return_conditional_losses_36935563

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЛ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
ќ
-__inference_PASTA_CTAE_layer_call_fn_36936233
input_1
input_2
input_3!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:	
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:0

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:0

unknown_24:0

unknown_25:d

unknown_26:d

unknown_27:

unknown_28:
identity

identity_1

identity_2ЂStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*@
_read_only_resource_inputs"
 	
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_369360952
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ

!
_user_specified_name	input_2:XT
/
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_3
П
i
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_36936998

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ј

+__inference_dense_27_layer_call_fn_36937509

inputs
unknown:d
	unknown_0:d
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_27_layer_call_and_return_conditional_losses_369350552
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё=
ф
E__inference_decoder_layer_call_and_return_conditional_losses_36935494
input_6#
dense_23_36935450:
dense_23_36935452:#
dense_28_36935455:
dense_28_36935457:#
dense_26_36935460:
dense_26_36935462:#
dense_24_36935465:
dense_24_36935467:#
dense_29_36935470:0
dense_29_36935472:0#
dense_27_36935475:d
dense_27_36935477:d#
dense_25_36935480:
dense_25_36935482:
identity

identity_1

identity_2Ђ dense_23/StatefulPartitionedCallЂ dense_24/StatefulPartitionedCallЂ dense_25/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallЂ dense_28/StatefulPartitionedCallЂ dense_29/StatefulPartitionedCall
 dense_23/StatefulPartitionedCallStatefulPartitionedCallinput_6dense_23_36935450dense_23_36935452*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_23_layer_call_and_return_conditional_losses_369349702"
 dense_23/StatefulPartitionedCallР
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_28_36935455dense_28_36935457*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_28_layer_call_and_return_conditional_losses_369349872"
 dense_28/StatefulPartitionedCallР
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_26_36935460dense_26_36935462*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_26_layer_call_and_return_conditional_losses_369350042"
 dense_26/StatefulPartitionedCallР
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_36935465dense_24_36935467*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_24_layer_call_and_return_conditional_losses_369350212"
 dense_24/StatefulPartitionedCallР
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_36935470dense_29_36935472*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_29_layer_call_and_return_conditional_losses_369350382"
 dense_29/StatefulPartitionedCallР
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_36935475dense_27_36935477*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_27_layer_call_and_return_conditional_losses_369350552"
 dense_27/StatefulPartitionedCallР
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_36935480dense_25_36935482*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_25_layer_call_and_return_conditional_losses_369350722"
 dense_25/StatefulPartitionedCall
reshape_12/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_12_layer_call_and_return_conditional_losses_369350922
reshape_12/PartitionedCall
reshape_11/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_11_layer_call_and_return_conditional_losses_369351082
reshape_11/PartitionedCall
reshape_10/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_10_layer_call_and_return_conditional_losses_369351222
reshape_10/PartitionedCall
softmax_2/PartitionedCallPartitionedCall#reshape_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_softmax_2_layer_call_and_return_conditional_losses_369351292
softmax_2/PartitionedCall
softmax_1/PartitionedCallPartitionedCall#reshape_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_softmax_1_layer_call_and_return_conditional_losses_369351362
softmax_1/PartitionedCallѓ
softmax/PartitionedCallPartitionedCall#reshape_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_softmax_layer_call_and_return_conditional_losses_369351432
softmax/PartitionedCall{
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity"softmax_1/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity"softmax_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2У
NoOpNoOp!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_6

ї
F__inference_dense_29_layer_call_and_return_conditional_losses_36937540

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ02
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ02

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_reshape_10_layer_call_and_return_conditional_losses_36937557

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

џ
F__inference_conv2d_2_layer_call_and_return_conditional_losses_36936958

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЛ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
ќ
-__inference_PASTA_CTAE_layer_call_fn_36935826
input_1
input_2
input_3!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:	
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:0

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:0

unknown_24:0

unknown_25:d

unknown_26:d

unknown_27:

unknown_28:
identity

identity_1

identity_2ЂStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*@
_read_only_resource_inputs"
 	
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_369357592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ

!
_user_specified_name	input_2:XT
/
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_3
M

H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936401
input_1
input_2
input_3+
conv2d_2_36936322:
conv2d_2_36936324:)
conv2d_36936327:
conv2d_36936329:+
conv2d_3_36936334:
conv2d_3_36936336:+
conv2d_1_36936339:	
conv2d_1_36936341: 
dense_36936346:
dense_36936348:"
dense_1_36936351:
dense_1_36936353:"
dense_2_36936356:
dense_2_36936358:)
encoder_output_36936362:0%
encoder_output_36936364:"
decoder_36936367:
decoder_36936369:"
decoder_36936371:
decoder_36936373:"
decoder_36936375:
decoder_36936377:"
decoder_36936379:
decoder_36936381:"
decoder_36936383:0
decoder_36936385:0"
decoder_36936387:d
decoder_36936389:d"
decoder_36936391:
decoder_36936393:
identity

identity_1

identity_2Ђconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂdecoder/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂ&encoder_output/StatefulPartitionedCallІ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_2_36936322conv2d_2_36936324*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_369355632"
 conv2d_2/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_36936327conv2d_36936329*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_369355802 
conv2d/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_369355902!
max_pooling2d_1/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_369355962
max_pooling2d/PartitionedCallЧ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_3_36936334conv2d_3_36936336*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_369356092"
 conv2d_3/StatefulPartitionedCallХ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_36936339conv2d_1_36936341*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_369356262"
 conv2d_1/StatefulPartitionedCallџ
flatten_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_369356382
flatten_1/PartitionedCallљ
flatten/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_369356462
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_36936346dense_36936348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_369356592
dense/StatefulPartitionedCallВ
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_36936351dense_1_36936353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_369356762!
dense_1/StatefulPartitionedCallД
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_36936356dense_2_36936358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_369356932!
dense_2/StatefulPartitionedCallо
concatenate_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0(dense_1/StatefulPartitionedCall:output:0(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_369357072
concatenate_2/PartitionedCallл
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0encoder_output_36936362encoder_output_36936364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_encoder_output_layer_call_and_return_conditional_losses_369357192(
&encoder_output/StatefulPartitionedCallщ
decoder/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_36936367decoder_36936369decoder_36936371decoder_36936373decoder_36936375decoder_36936377decoder_36936379decoder_36936381decoder_36936383decoder_36936385decoder_36936387decoder_36936389decoder_36936391decoder_36936393*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_decoder_layer_call_and_return_conditional_losses_369353752!
decoder/StatefulPartitionedCall
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity(decoder/StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^decoder/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ

!
_user_specified_name	input_2:XT
/
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_3

ї
F__inference_dense_28_layer_call_and_return_conditional_losses_36934987

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
о
N
2__inference_max_pooling2d_1_layer_call_fn_36936983

inputs
identityё
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_369349392
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


1__inference_encoder_output_layer_call_fn_36937144

inputs
unknown:0
	unknown_0:
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_encoder_output_layer_call_and_return_conditional_losses_369357192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
і

*__inference_dense_1_layer_call_fn_36937089

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_369356762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

і
E__inference_dense_1_layer_call_and_return_conditional_losses_36935676

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ
i
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_36934939

inputs
identityЌ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і

*__inference_dense_2_layer_call_fn_36937109

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_369356932
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_reshape_10_layer_call_and_return_conditional_losses_36935122

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Н
g
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_36936978

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ	*
ksize
*
paddingSAME*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ	:W S
/
_output_shapes
:џџџџџџџџџ	
 
_user_specified_nameinputs
п

K__inference_concatenate_2_layer_call_and_return_conditional_losses_36935707

inputs
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ02
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
=
у
E__inference_decoder_layer_call_and_return_conditional_losses_36935375

inputs#
dense_23_36935331:
dense_23_36935333:#
dense_28_36935336:
dense_28_36935338:#
dense_26_36935341:
dense_26_36935343:#
dense_24_36935346:
dense_24_36935348:#
dense_29_36935351:0
dense_29_36935353:0#
dense_27_36935356:d
dense_27_36935358:d#
dense_25_36935361:
dense_25_36935363:
identity

identity_1

identity_2Ђ dense_23/StatefulPartitionedCallЂ dense_24/StatefulPartitionedCallЂ dense_25/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallЂ dense_28/StatefulPartitionedCallЂ dense_29/StatefulPartitionedCall
 dense_23/StatefulPartitionedCallStatefulPartitionedCallinputsdense_23_36935331dense_23_36935333*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_23_layer_call_and_return_conditional_losses_369349702"
 dense_23/StatefulPartitionedCallР
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_28_36935336dense_28_36935338*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_28_layer_call_and_return_conditional_losses_369349872"
 dense_28/StatefulPartitionedCallР
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_26_36935341dense_26_36935343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_26_layer_call_and_return_conditional_losses_369350042"
 dense_26/StatefulPartitionedCallР
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_36935346dense_24_36935348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_24_layer_call_and_return_conditional_losses_369350212"
 dense_24/StatefulPartitionedCallР
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_36935351dense_29_36935353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_29_layer_call_and_return_conditional_losses_369350382"
 dense_29/StatefulPartitionedCallР
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_36935356dense_27_36935358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_27_layer_call_and_return_conditional_losses_369350552"
 dense_27/StatefulPartitionedCallР
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_36935361dense_25_36935363*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_25_layer_call_and_return_conditional_losses_369350722"
 dense_25/StatefulPartitionedCall
reshape_12/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_12_layer_call_and_return_conditional_losses_369350922
reshape_12/PartitionedCall
reshape_11/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_11_layer_call_and_return_conditional_losses_369351082
reshape_11/PartitionedCall
reshape_10/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_10_layer_call_and_return_conditional_losses_369351222
reshape_10/PartitionedCall
softmax_2/PartitionedCallPartitionedCall#reshape_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_softmax_2_layer_call_and_return_conditional_losses_369351292
softmax_2/PartitionedCall
softmax_1/PartitionedCallPartitionedCall#reshape_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_softmax_1_layer_call_and_return_conditional_losses_369351362
softmax_1/PartitionedCallѓ
softmax/PartitionedCallPartitionedCall#reshape_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_softmax_layer_call_and_return_conditional_losses_369351432
softmax/PartitionedCall{
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity"softmax_1/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity"softmax_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2У
NoOpNoOp!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё=
ф
E__inference_decoder_layer_call_and_return_conditional_losses_36935541
input_6#
dense_23_36935497:
dense_23_36935499:#
dense_28_36935502:
dense_28_36935504:#
dense_26_36935507:
dense_26_36935509:#
dense_24_36935512:
dense_24_36935514:#
dense_29_36935517:0
dense_29_36935519:0#
dense_27_36935522:d
dense_27_36935524:d#
dense_25_36935527:
dense_25_36935529:
identity

identity_1

identity_2Ђ dense_23/StatefulPartitionedCallЂ dense_24/StatefulPartitionedCallЂ dense_25/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallЂ dense_28/StatefulPartitionedCallЂ dense_29/StatefulPartitionedCall
 dense_23/StatefulPartitionedCallStatefulPartitionedCallinput_6dense_23_36935497dense_23_36935499*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_23_layer_call_and_return_conditional_losses_369349702"
 dense_23/StatefulPartitionedCallР
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_28_36935502dense_28_36935504*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_28_layer_call_and_return_conditional_losses_369349872"
 dense_28/StatefulPartitionedCallР
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_26_36935507dense_26_36935509*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_26_layer_call_and_return_conditional_losses_369350042"
 dense_26/StatefulPartitionedCallР
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_36935512dense_24_36935514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_24_layer_call_and_return_conditional_losses_369350212"
 dense_24/StatefulPartitionedCallР
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_36935517dense_29_36935519*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_29_layer_call_and_return_conditional_losses_369350382"
 dense_29/StatefulPartitionedCallР
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_36935522dense_27_36935524*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_27_layer_call_and_return_conditional_losses_369350552"
 dense_27/StatefulPartitionedCallР
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_36935527dense_25_36935529*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_25_layer_call_and_return_conditional_losses_369350722"
 dense_25/StatefulPartitionedCall
reshape_12/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_12_layer_call_and_return_conditional_losses_369350922
reshape_12/PartitionedCall
reshape_11/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_11_layer_call_and_return_conditional_losses_369351082
reshape_11/PartitionedCall
reshape_10/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_10_layer_call_and_return_conditional_losses_369351222
reshape_10/PartitionedCall
softmax_2/PartitionedCallPartitionedCall#reshape_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_softmax_2_layer_call_and_return_conditional_losses_369351292
softmax_2/PartitionedCall
softmax_1/PartitionedCallPartitionedCall#reshape_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_softmax_1_layer_call_and_return_conditional_losses_369351362
softmax_1/PartitionedCallѓ
softmax/PartitionedCallPartitionedCall#reshape_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_softmax_layer_call_and_return_conditional_losses_369351432
softmax/PartitionedCall{
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity"softmax_1/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity"softmax_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2У
NoOpNoOp!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_6
Й@
ю
!__inference__traced_save_36937742
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop4
0savev2_encoder_output_kernel_read_readvariableop2
.savev2_encoder_output_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop.
*savev2_dense_29_kernel_read_readvariableop,
(savev2_dense_29_bias_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameл
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*э
valueуBрB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЦ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesр
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop0savev2_encoder_output_kernel_read_readvariableop.savev2_encoder_output_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop*savev2_dense_29_kernel_read_readvariableop(savev2_dense_29_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!22
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*Љ
_input_shapes
: :::::	::::::::::0::::::::::::d:d:0:0: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:	: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:0: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:0: 

_output_shapes
:0:

_output_shapes
: 
ч
c
G__inference_flatten_1_layer_call_and_return_conditional_losses_36937060

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
к
L
0__inference_max_pooling2d_layer_call_fn_36936963

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_369349172
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ё
 
+__inference_conv2d_3_layer_call_fn_36937027

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_369356092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ў
ѕ
&__inference_signature_wrapper_36936474
input_1
input_2
input_3!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:	
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:0

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:0

unknown_24:0

unknown_25:d

unknown_26:d

unknown_27:

unknown_28:
identity

identity_1

identity_2ЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*@
_read_only_resource_inputs"
 	
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__wrapped_model_369349082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ

!
_user_specified_name	input_2:XT
/
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_3

c
G__inference_softmax_2_layer_call_and_return_conditional_losses_36935129

inputs
identity_
SoftmaxSoftmaxinputs*
T0*/
_output_shapes
:џџџџџџџџџ2	
Softmaxm
IdentityIdentitySoftmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ў

§
L__inference_encoder_output_layer_call_and_return_conditional_losses_36935719

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ј

+__inference_dense_29_layer_call_fn_36937529

inputs
unknown:0
	unknown_0:0
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_29_layer_call_and_return_conditional_losses_369350382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_reshape_11_layer_call_and_return_conditional_losses_36937576

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
2
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
б~
§
$__inference__traced_restore_36937842
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:<
"assignvariableop_2_conv2d_2_kernel:.
 assignvariableop_3_conv2d_2_bias:<
"assignvariableop_4_conv2d_1_kernel:	.
 assignvariableop_5_conv2d_1_bias:<
"assignvariableop_6_conv2d_3_kernel:.
 assignvariableop_7_conv2d_3_bias:1
assignvariableop_8_dense_kernel:+
assignvariableop_9_dense_bias:4
"assignvariableop_10_dense_1_kernel:.
 assignvariableop_11_dense_1_bias:4
"assignvariableop_12_dense_2_kernel:.
 assignvariableop_13_dense_2_bias:;
)assignvariableop_14_encoder_output_kernel:05
'assignvariableop_15_encoder_output_bias:5
#assignvariableop_16_dense_23_kernel:/
!assignvariableop_17_dense_23_bias:5
#assignvariableop_18_dense_24_kernel:/
!assignvariableop_19_dense_24_bias:5
#assignvariableop_20_dense_26_kernel:/
!assignvariableop_21_dense_26_bias:5
#assignvariableop_22_dense_28_kernel:/
!assignvariableop_23_dense_28_bias:5
#assignvariableop_24_dense_25_kernel:/
!assignvariableop_25_dense_25_bias:5
#assignvariableop_26_dense_27_kernel:d/
!assignvariableop_27_dense_27_bias:d5
#assignvariableop_28_dense_29_kernel:0/
!assignvariableop_29_dense_29_bias:0
identity_31ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9с
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*э
valueуBрB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЬ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЧ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѓ
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ї
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѕ
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ї
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѕ
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ї
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѕ
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Є
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ђ
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Њ
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ј
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Њ
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ј
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Б
AssignVariableOp_14AssignVariableOp)assignvariableop_14_encoder_output_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Џ
AssignVariableOp_15AssignVariableOp'assignvariableop_15_encoder_output_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ћ
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_23_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Љ
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_23_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ћ
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_24_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Љ
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_24_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ћ
AssignVariableOp_20AssignVariableOp#assignvariableop_20_dense_26_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Љ
AssignVariableOp_21AssignVariableOp!assignvariableop_21_dense_26_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ћ
AssignVariableOp_22AssignVariableOp#assignvariableop_22_dense_28_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Љ
AssignVariableOp_23AssignVariableOp!assignvariableop_23_dense_28_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ћ
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_25_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Љ
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_25_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ћ
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_27_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Љ
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_27_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ћ
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_29_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Љ
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_29_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_299
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpђ
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_30f
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_31к
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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

§
D__inference_conv2d_layer_call_and_return_conditional_losses_36936938

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЛ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
data_formatNCHW*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
data_formatNCHW2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ	2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ	2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ј

+__inference_dense_26_layer_call_fn_36937449

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_26_layer_call_and_return_conditional_losses_369350042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ў

§
L__inference_encoder_output_layer_call_and_return_conditional_losses_36937154

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
х
a
E__inference_flatten_layer_call_and_return_conditional_losses_36937049

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ї
F__inference_dense_25_layer_call_and_return_conditional_losses_36935072

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ї
F__inference_dense_29_layer_call_and_return_conditional_losses_36935038

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ02
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ02

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

і
E__inference_dense_2_layer_call_and_return_conditional_losses_36937120

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ј

+__inference_dense_23_layer_call_fn_36937409

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_23_layer_call_and_return_conditional_losses_369349702
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ч
I
-__inference_reshape_10_layer_call_fn_36937545

inputs
identityЩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_10_layer_call_and_return_conditional_losses_369351222
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

c
G__inference_softmax_2_layer_call_and_return_conditional_losses_36937625

inputs
identity_
SoftmaxSoftmaxinputs*
T0*/
_output_shapes
:џџџџџџџџџ2	
Softmaxm
IdentityIdentitySoftmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
=
у
E__inference_decoder_layer_call_and_return_conditional_losses_36935148

inputs#
dense_23_36934971:
dense_23_36934973:#
dense_28_36934988:
dense_28_36934990:#
dense_26_36935005:
dense_26_36935007:#
dense_24_36935022:
dense_24_36935024:#
dense_29_36935039:0
dense_29_36935041:0#
dense_27_36935056:d
dense_27_36935058:d#
dense_25_36935073:
dense_25_36935075:
identity

identity_1

identity_2Ђ dense_23/StatefulPartitionedCallЂ dense_24/StatefulPartitionedCallЂ dense_25/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallЂ dense_28/StatefulPartitionedCallЂ dense_29/StatefulPartitionedCall
 dense_23/StatefulPartitionedCallStatefulPartitionedCallinputsdense_23_36934971dense_23_36934973*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_23_layer_call_and_return_conditional_losses_369349702"
 dense_23/StatefulPartitionedCallР
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_28_36934988dense_28_36934990*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_28_layer_call_and_return_conditional_losses_369349872"
 dense_28/StatefulPartitionedCallР
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_26_36935005dense_26_36935007*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_26_layer_call_and_return_conditional_losses_369350042"
 dense_26/StatefulPartitionedCallР
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_36935022dense_24_36935024*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_24_layer_call_and_return_conditional_losses_369350212"
 dense_24/StatefulPartitionedCallР
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_36935039dense_29_36935041*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_29_layer_call_and_return_conditional_losses_369350382"
 dense_29/StatefulPartitionedCallР
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_36935056dense_27_36935058*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_27_layer_call_and_return_conditional_losses_369350552"
 dense_27/StatefulPartitionedCallР
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_36935073dense_25_36935075*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_25_layer_call_and_return_conditional_losses_369350722"
 dense_25/StatefulPartitionedCall
reshape_12/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_12_layer_call_and_return_conditional_losses_369350922
reshape_12/PartitionedCall
reshape_11/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_11_layer_call_and_return_conditional_losses_369351082
reshape_11/PartitionedCall
reshape_10/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_10_layer_call_and_return_conditional_losses_369351222
reshape_10/PartitionedCall
softmax_2/PartitionedCallPartitionedCall#reshape_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_softmax_2_layer_call_and_return_conditional_losses_369351292
softmax_2/PartitionedCall
softmax_1/PartitionedCallPartitionedCall#reshape_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_softmax_1_layer_call_and_return_conditional_losses_369351362
softmax_1/PartitionedCallѓ
softmax/PartitionedCallPartitionedCall#reshape_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_softmax_layer_call_and_return_conditional_losses_369351432
softmax/PartitionedCall{
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity"softmax_1/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity"softmax_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2У
NoOpNoOp!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
І
ў
*__inference_decoder_layer_call_fn_36937191

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:0
	unknown_8:0
	unknown_9:d

unknown_10:d

unknown_11:

unknown_12:
identity

identity_1

identity_2ЂStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_decoder_layer_call_and_return_conditional_losses_369351482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
э
џ
F__inference_conv2d_1_layer_call_and_return_conditional_losses_36937018

inputs8
conv2d_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:	*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ	
 
_user_specified_nameinputs

ї
F__inference_dense_24_layer_call_and_return_conditional_losses_36937440

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
в
З
#__inference__wrapped_model_36934908
input_1
input_2
input_3L
2pasta_ctae_conv2d_2_conv2d_readvariableop_resource:A
3pasta_ctae_conv2d_2_biasadd_readvariableop_resource:J
0pasta_ctae_conv2d_conv2d_readvariableop_resource:?
1pasta_ctae_conv2d_biasadd_readvariableop_resource:L
2pasta_ctae_conv2d_3_conv2d_readvariableop_resource:A
3pasta_ctae_conv2d_3_biasadd_readvariableop_resource:L
2pasta_ctae_conv2d_1_conv2d_readvariableop_resource:	A
3pasta_ctae_conv2d_1_biasadd_readvariableop_resource:A
/pasta_ctae_dense_matmul_readvariableop_resource:>
0pasta_ctae_dense_biasadd_readvariableop_resource:C
1pasta_ctae_dense_1_matmul_readvariableop_resource:@
2pasta_ctae_dense_1_biasadd_readvariableop_resource:C
1pasta_ctae_dense_2_matmul_readvariableop_resource:@
2pasta_ctae_dense_2_biasadd_readvariableop_resource:J
8pasta_ctae_encoder_output_matmul_readvariableop_resource:0G
9pasta_ctae_encoder_output_biasadd_readvariableop_resource:L
:pasta_ctae_decoder_dense_23_matmul_readvariableop_resource:I
;pasta_ctae_decoder_dense_23_biasadd_readvariableop_resource:L
:pasta_ctae_decoder_dense_28_matmul_readvariableop_resource:I
;pasta_ctae_decoder_dense_28_biasadd_readvariableop_resource:L
:pasta_ctae_decoder_dense_26_matmul_readvariableop_resource:I
;pasta_ctae_decoder_dense_26_biasadd_readvariableop_resource:L
:pasta_ctae_decoder_dense_24_matmul_readvariableop_resource:I
;pasta_ctae_decoder_dense_24_biasadd_readvariableop_resource:L
:pasta_ctae_decoder_dense_29_matmul_readvariableop_resource:0I
;pasta_ctae_decoder_dense_29_biasadd_readvariableop_resource:0L
:pasta_ctae_decoder_dense_27_matmul_readvariableop_resource:dI
;pasta_ctae_decoder_dense_27_biasadd_readvariableop_resource:dL
:pasta_ctae_decoder_dense_25_matmul_readvariableop_resource:I
;pasta_ctae_decoder_dense_25_biasadd_readvariableop_resource:
identity

identity_1

identity_2Ђ(PASTA_CTAE/conv2d/BiasAdd/ReadVariableOpЂ'PASTA_CTAE/conv2d/Conv2D/ReadVariableOpЂ*PASTA_CTAE/conv2d_1/BiasAdd/ReadVariableOpЂ)PASTA_CTAE/conv2d_1/Conv2D/ReadVariableOpЂ*PASTA_CTAE/conv2d_2/BiasAdd/ReadVariableOpЂ)PASTA_CTAE/conv2d_2/Conv2D/ReadVariableOpЂ*PASTA_CTAE/conv2d_3/BiasAdd/ReadVariableOpЂ)PASTA_CTAE/conv2d_3/Conv2D/ReadVariableOpЂ2PASTA_CTAE/decoder/dense_23/BiasAdd/ReadVariableOpЂ1PASTA_CTAE/decoder/dense_23/MatMul/ReadVariableOpЂ2PASTA_CTAE/decoder/dense_24/BiasAdd/ReadVariableOpЂ1PASTA_CTAE/decoder/dense_24/MatMul/ReadVariableOpЂ2PASTA_CTAE/decoder/dense_25/BiasAdd/ReadVariableOpЂ1PASTA_CTAE/decoder/dense_25/MatMul/ReadVariableOpЂ2PASTA_CTAE/decoder/dense_26/BiasAdd/ReadVariableOpЂ1PASTA_CTAE/decoder/dense_26/MatMul/ReadVariableOpЂ2PASTA_CTAE/decoder/dense_27/BiasAdd/ReadVariableOpЂ1PASTA_CTAE/decoder/dense_27/MatMul/ReadVariableOpЂ2PASTA_CTAE/decoder/dense_28/BiasAdd/ReadVariableOpЂ1PASTA_CTAE/decoder/dense_28/MatMul/ReadVariableOpЂ2PASTA_CTAE/decoder/dense_29/BiasAdd/ReadVariableOpЂ1PASTA_CTAE/decoder/dense_29/MatMul/ReadVariableOpЂ'PASTA_CTAE/dense/BiasAdd/ReadVariableOpЂ&PASTA_CTAE/dense/MatMul/ReadVariableOpЂ)PASTA_CTAE/dense_1/BiasAdd/ReadVariableOpЂ(PASTA_CTAE/dense_1/MatMul/ReadVariableOpЂ)PASTA_CTAE/dense_2/BiasAdd/ReadVariableOpЂ(PASTA_CTAE/dense_2/MatMul/ReadVariableOpЂ0PASTA_CTAE/encoder_output/BiasAdd/ReadVariableOpЂ/PASTA_CTAE/encoder_output/MatMul/ReadVariableOpб
)PASTA_CTAE/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2pasta_ctae_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)PASTA_CTAE/conv2d_2/Conv2D/ReadVariableOpј
PASTA_CTAE/conv2d_2/Conv2DConv2Dinput_31PASTA_CTAE/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingVALID*
strides
2
PASTA_CTAE/conv2d_2/Conv2DШ
*PASTA_CTAE/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3pasta_ctae_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*PASTA_CTAE/conv2d_2/BiasAdd/ReadVariableOpя
PASTA_CTAE/conv2d_2/BiasAddBiasAdd#PASTA_CTAE/conv2d_2/Conv2D:output:02PASTA_CTAE/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
PASTA_CTAE/conv2d_2/BiasAdd
PASTA_CTAE/conv2d_2/ReluRelu$PASTA_CTAE/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/conv2d_2/ReluЫ
'PASTA_CTAE/conv2d/Conv2D/ReadVariableOpReadVariableOp0pasta_ctae_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'PASTA_CTAE/conv2d/Conv2D/ReadVariableOpђ
PASTA_CTAE/conv2d/Conv2DConv2Dinput_2/PASTA_CTAE/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
data_formatNCHW*
paddingVALID*
strides
2
PASTA_CTAE/conv2d/Conv2DТ
(PASTA_CTAE/conv2d/BiasAdd/ReadVariableOpReadVariableOp1pasta_ctae_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(PASTA_CTAE/conv2d/BiasAdd/ReadVariableOpч
PASTA_CTAE/conv2d/BiasAddBiasAdd!PASTA_CTAE/conv2d/Conv2D:output:00PASTA_CTAE/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
data_formatNCHW2
PASTA_CTAE/conv2d/BiasAdd
PASTA_CTAE/conv2d/ReluRelu"PASTA_CTAE/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ	2
PASTA_CTAE/conv2d/Reluч
"PASTA_CTAE/max_pooling2d_1/MaxPoolMaxPool&PASTA_CTAE/conv2d_2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
2$
"PASTA_CTAE/max_pooling2d_1/MaxPoolс
 PASTA_CTAE/max_pooling2d/MaxPoolMaxPool$PASTA_CTAE/conv2d/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ	*
ksize
*
paddingSAME*
strides
2"
 PASTA_CTAE/max_pooling2d/MaxPoolб
)PASTA_CTAE/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2pasta_ctae_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)PASTA_CTAE/conv2d_3/Conv2D/ReadVariableOp
PASTA_CTAE/conv2d_3/Conv2DConv2D+PASTA_CTAE/max_pooling2d_1/MaxPool:output:01PASTA_CTAE/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
PASTA_CTAE/conv2d_3/Conv2DШ
*PASTA_CTAE/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3pasta_ctae_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*PASTA_CTAE/conv2d_3/BiasAdd/ReadVariableOpи
PASTA_CTAE/conv2d_3/BiasAddBiasAdd#PASTA_CTAE/conv2d_3/Conv2D:output:02PASTA_CTAE/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/conv2d_3/BiasAdd
PASTA_CTAE/conv2d_3/ReluRelu$PASTA_CTAE/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/conv2d_3/Reluб
)PASTA_CTAE/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2pasta_ctae_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype02+
)PASTA_CTAE/conv2d_1/Conv2D/ReadVariableOp
PASTA_CTAE/conv2d_1/Conv2DConv2D)PASTA_CTAE/max_pooling2d/MaxPool:output:01PASTA_CTAE/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
PASTA_CTAE/conv2d_1/Conv2DШ
*PASTA_CTAE/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3pasta_ctae_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*PASTA_CTAE/conv2d_1/BiasAdd/ReadVariableOpи
PASTA_CTAE/conv2d_1/BiasAddBiasAdd#PASTA_CTAE/conv2d_1/Conv2D:output:02PASTA_CTAE/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/conv2d_1/BiasAdd
PASTA_CTAE/conv2d_1/ReluRelu$PASTA_CTAE/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/conv2d_1/Relu
PASTA_CTAE/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
PASTA_CTAE/flatten_1/ConstЦ
PASTA_CTAE/flatten_1/ReshapeReshape&PASTA_CTAE/conv2d_3/Relu:activations:0#PASTA_CTAE/flatten_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/flatten_1/Reshape
PASTA_CTAE/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
PASTA_CTAE/flatten/ConstР
PASTA_CTAE/flatten/ReshapeReshape&PASTA_CTAE/conv2d_1/Relu:activations:0!PASTA_CTAE/flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/flatten/ReshapeР
&PASTA_CTAE/dense/MatMul/ReadVariableOpReadVariableOp/pasta_ctae_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&PASTA_CTAE/dense/MatMul/ReadVariableOpЇ
PASTA_CTAE/dense/MatMulMatMulinput_1.PASTA_CTAE/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/dense/MatMulП
'PASTA_CTAE/dense/BiasAdd/ReadVariableOpReadVariableOp0pasta_ctae_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'PASTA_CTAE/dense/BiasAdd/ReadVariableOpХ
PASTA_CTAE/dense/BiasAddBiasAdd!PASTA_CTAE/dense/MatMul:product:0/PASTA_CTAE/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/dense/BiasAdd
PASTA_CTAE/dense/ReluRelu!PASTA_CTAE/dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/dense/ReluЦ
(PASTA_CTAE/dense_1/MatMul/ReadVariableOpReadVariableOp1pasta_ctae_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(PASTA_CTAE/dense_1/MatMul/ReadVariableOpЩ
PASTA_CTAE/dense_1/MatMulMatMul#PASTA_CTAE/flatten/Reshape:output:00PASTA_CTAE/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/dense_1/MatMulХ
)PASTA_CTAE/dense_1/BiasAdd/ReadVariableOpReadVariableOp2pasta_ctae_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)PASTA_CTAE/dense_1/BiasAdd/ReadVariableOpЭ
PASTA_CTAE/dense_1/BiasAddBiasAdd#PASTA_CTAE/dense_1/MatMul:product:01PASTA_CTAE/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/dense_1/BiasAdd
PASTA_CTAE/dense_1/ReluRelu#PASTA_CTAE/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/dense_1/ReluЦ
(PASTA_CTAE/dense_2/MatMul/ReadVariableOpReadVariableOp1pasta_ctae_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(PASTA_CTAE/dense_2/MatMul/ReadVariableOpЫ
PASTA_CTAE/dense_2/MatMulMatMul%PASTA_CTAE/flatten_1/Reshape:output:00PASTA_CTAE/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/dense_2/MatMulХ
)PASTA_CTAE/dense_2/BiasAdd/ReadVariableOpReadVariableOp2pasta_ctae_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)PASTA_CTAE/dense_2/BiasAdd/ReadVariableOpЭ
PASTA_CTAE/dense_2/BiasAddBiasAdd#PASTA_CTAE/dense_2/MatMul:product:01PASTA_CTAE/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/dense_2/BiasAdd
PASTA_CTAE/dense_2/ReluRelu#PASTA_CTAE/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
PASTA_CTAE/dense_2/Relu
$PASTA_CTAE/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2&
$PASTA_CTAE/concatenate_2/concat/axisЋ
PASTA_CTAE/concatenate_2/concatConcatV2#PASTA_CTAE/dense/Relu:activations:0%PASTA_CTAE/dense_1/Relu:activations:0%PASTA_CTAE/dense_2/Relu:activations:0-PASTA_CTAE/concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ02!
PASTA_CTAE/concatenate_2/concatл
/PASTA_CTAE/encoder_output/MatMul/ReadVariableOpReadVariableOp8pasta_ctae_encoder_output_matmul_readvariableop_resource*
_output_shapes

:0*
dtype021
/PASTA_CTAE/encoder_output/MatMul/ReadVariableOpу
 PASTA_CTAE/encoder_output/MatMulMatMul(PASTA_CTAE/concatenate_2/concat:output:07PASTA_CTAE/encoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 PASTA_CTAE/encoder_output/MatMulк
0PASTA_CTAE/encoder_output/BiasAdd/ReadVariableOpReadVariableOp9pasta_ctae_encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0PASTA_CTAE/encoder_output/BiasAdd/ReadVariableOpщ
!PASTA_CTAE/encoder_output/BiasAddBiasAdd*PASTA_CTAE/encoder_output/MatMul:product:08PASTA_CTAE/encoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2#
!PASTA_CTAE/encoder_output/BiasAddс
1PASTA_CTAE/decoder/dense_23/MatMul/ReadVariableOpReadVariableOp:pasta_ctae_decoder_dense_23_matmul_readvariableop_resource*
_output_shapes

:*
dtype023
1PASTA_CTAE/decoder/dense_23/MatMul/ReadVariableOpы
"PASTA_CTAE/decoder/dense_23/MatMulMatMul*PASTA_CTAE/encoder_output/BiasAdd:output:09PASTA_CTAE/decoder/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2$
"PASTA_CTAE/decoder/dense_23/MatMulр
2PASTA_CTAE/decoder/dense_23/BiasAdd/ReadVariableOpReadVariableOp;pasta_ctae_decoder_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2PASTA_CTAE/decoder/dense_23/BiasAdd/ReadVariableOpё
#PASTA_CTAE/decoder/dense_23/BiasAddBiasAdd,PASTA_CTAE/decoder/dense_23/MatMul:product:0:PASTA_CTAE/decoder/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2%
#PASTA_CTAE/decoder/dense_23/BiasAddЌ
 PASTA_CTAE/decoder/dense_23/ReluRelu,PASTA_CTAE/decoder/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 PASTA_CTAE/decoder/dense_23/Reluс
1PASTA_CTAE/decoder/dense_28/MatMul/ReadVariableOpReadVariableOp:pasta_ctae_decoder_dense_28_matmul_readvariableop_resource*
_output_shapes

:*
dtype023
1PASTA_CTAE/decoder/dense_28/MatMul/ReadVariableOpя
"PASTA_CTAE/decoder/dense_28/MatMulMatMul.PASTA_CTAE/decoder/dense_23/Relu:activations:09PASTA_CTAE/decoder/dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2$
"PASTA_CTAE/decoder/dense_28/MatMulр
2PASTA_CTAE/decoder/dense_28/BiasAdd/ReadVariableOpReadVariableOp;pasta_ctae_decoder_dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2PASTA_CTAE/decoder/dense_28/BiasAdd/ReadVariableOpё
#PASTA_CTAE/decoder/dense_28/BiasAddBiasAdd,PASTA_CTAE/decoder/dense_28/MatMul:product:0:PASTA_CTAE/decoder/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2%
#PASTA_CTAE/decoder/dense_28/BiasAddЌ
 PASTA_CTAE/decoder/dense_28/ReluRelu,PASTA_CTAE/decoder/dense_28/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 PASTA_CTAE/decoder/dense_28/Reluс
1PASTA_CTAE/decoder/dense_26/MatMul/ReadVariableOpReadVariableOp:pasta_ctae_decoder_dense_26_matmul_readvariableop_resource*
_output_shapes

:*
dtype023
1PASTA_CTAE/decoder/dense_26/MatMul/ReadVariableOpя
"PASTA_CTAE/decoder/dense_26/MatMulMatMul.PASTA_CTAE/decoder/dense_23/Relu:activations:09PASTA_CTAE/decoder/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2$
"PASTA_CTAE/decoder/dense_26/MatMulр
2PASTA_CTAE/decoder/dense_26/BiasAdd/ReadVariableOpReadVariableOp;pasta_ctae_decoder_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2PASTA_CTAE/decoder/dense_26/BiasAdd/ReadVariableOpё
#PASTA_CTAE/decoder/dense_26/BiasAddBiasAdd,PASTA_CTAE/decoder/dense_26/MatMul:product:0:PASTA_CTAE/decoder/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2%
#PASTA_CTAE/decoder/dense_26/BiasAddЌ
 PASTA_CTAE/decoder/dense_26/ReluRelu,PASTA_CTAE/decoder/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 PASTA_CTAE/decoder/dense_26/Reluс
1PASTA_CTAE/decoder/dense_24/MatMul/ReadVariableOpReadVariableOp:pasta_ctae_decoder_dense_24_matmul_readvariableop_resource*
_output_shapes

:*
dtype023
1PASTA_CTAE/decoder/dense_24/MatMul/ReadVariableOpя
"PASTA_CTAE/decoder/dense_24/MatMulMatMul.PASTA_CTAE/decoder/dense_23/Relu:activations:09PASTA_CTAE/decoder/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2$
"PASTA_CTAE/decoder/dense_24/MatMulр
2PASTA_CTAE/decoder/dense_24/BiasAdd/ReadVariableOpReadVariableOp;pasta_ctae_decoder_dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2PASTA_CTAE/decoder/dense_24/BiasAdd/ReadVariableOpё
#PASTA_CTAE/decoder/dense_24/BiasAddBiasAdd,PASTA_CTAE/decoder/dense_24/MatMul:product:0:PASTA_CTAE/decoder/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2%
#PASTA_CTAE/decoder/dense_24/BiasAddЌ
 PASTA_CTAE/decoder/dense_24/ReluRelu,PASTA_CTAE/decoder/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 PASTA_CTAE/decoder/dense_24/Reluс
1PASTA_CTAE/decoder/dense_29/MatMul/ReadVariableOpReadVariableOp:pasta_ctae_decoder_dense_29_matmul_readvariableop_resource*
_output_shapes

:0*
dtype023
1PASTA_CTAE/decoder/dense_29/MatMul/ReadVariableOpя
"PASTA_CTAE/decoder/dense_29/MatMulMatMul.PASTA_CTAE/decoder/dense_28/Relu:activations:09PASTA_CTAE/decoder/dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02$
"PASTA_CTAE/decoder/dense_29/MatMulр
2PASTA_CTAE/decoder/dense_29/BiasAdd/ReadVariableOpReadVariableOp;pasta_ctae_decoder_dense_29_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype024
2PASTA_CTAE/decoder/dense_29/BiasAdd/ReadVariableOpё
#PASTA_CTAE/decoder/dense_29/BiasAddBiasAdd,PASTA_CTAE/decoder/dense_29/MatMul:product:0:PASTA_CTAE/decoder/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02%
#PASTA_CTAE/decoder/dense_29/BiasAddЌ
 PASTA_CTAE/decoder/dense_29/ReluRelu,PASTA_CTAE/decoder/dense_29/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ02"
 PASTA_CTAE/decoder/dense_29/Reluс
1PASTA_CTAE/decoder/dense_27/MatMul/ReadVariableOpReadVariableOp:pasta_ctae_decoder_dense_27_matmul_readvariableop_resource*
_output_shapes

:d*
dtype023
1PASTA_CTAE/decoder/dense_27/MatMul/ReadVariableOpя
"PASTA_CTAE/decoder/dense_27/MatMulMatMul.PASTA_CTAE/decoder/dense_26/Relu:activations:09PASTA_CTAE/decoder/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2$
"PASTA_CTAE/decoder/dense_27/MatMulр
2PASTA_CTAE/decoder/dense_27/BiasAdd/ReadVariableOpReadVariableOp;pasta_ctae_decoder_dense_27_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype024
2PASTA_CTAE/decoder/dense_27/BiasAdd/ReadVariableOpё
#PASTA_CTAE/decoder/dense_27/BiasAddBiasAdd,PASTA_CTAE/decoder/dense_27/MatMul:product:0:PASTA_CTAE/decoder/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2%
#PASTA_CTAE/decoder/dense_27/BiasAddЌ
 PASTA_CTAE/decoder/dense_27/ReluRelu,PASTA_CTAE/decoder/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2"
 PASTA_CTAE/decoder/dense_27/Reluс
1PASTA_CTAE/decoder/dense_25/MatMul/ReadVariableOpReadVariableOp:pasta_ctae_decoder_dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype023
1PASTA_CTAE/decoder/dense_25/MatMul/ReadVariableOpя
"PASTA_CTAE/decoder/dense_25/MatMulMatMul.PASTA_CTAE/decoder/dense_24/Relu:activations:09PASTA_CTAE/decoder/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2$
"PASTA_CTAE/decoder/dense_25/MatMulр
2PASTA_CTAE/decoder/dense_25/BiasAdd/ReadVariableOpReadVariableOp;pasta_ctae_decoder_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2PASTA_CTAE/decoder/dense_25/BiasAdd/ReadVariableOpё
#PASTA_CTAE/decoder/dense_25/BiasAddBiasAdd,PASTA_CTAE/decoder/dense_25/MatMul:product:0:PASTA_CTAE/decoder/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2%
#PASTA_CTAE/decoder/dense_25/BiasAddЌ
 PASTA_CTAE/decoder/dense_25/ReluRelu,PASTA_CTAE/decoder/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 PASTA_CTAE/decoder/dense_25/ReluЈ
#PASTA_CTAE/decoder/reshape_12/ShapeShape.PASTA_CTAE/decoder/dense_29/Relu:activations:0*
T0*
_output_shapes
:2%
#PASTA_CTAE/decoder/reshape_12/ShapeА
1PASTA_CTAE/decoder/reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1PASTA_CTAE/decoder/reshape_12/strided_slice/stackД
3PASTA_CTAE/decoder/reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3PASTA_CTAE/decoder/reshape_12/strided_slice/stack_1Д
3PASTA_CTAE/decoder/reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3PASTA_CTAE/decoder/reshape_12/strided_slice/stack_2
+PASTA_CTAE/decoder/reshape_12/strided_sliceStridedSlice,PASTA_CTAE/decoder/reshape_12/Shape:output:0:PASTA_CTAE/decoder/reshape_12/strided_slice/stack:output:0<PASTA_CTAE/decoder/reshape_12/strided_slice/stack_1:output:0<PASTA_CTAE/decoder/reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+PASTA_CTAE/decoder/reshape_12/strided_slice 
-PASTA_CTAE/decoder/reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-PASTA_CTAE/decoder/reshape_12/Reshape/shape/1 
-PASTA_CTAE/decoder/reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2/
-PASTA_CTAE/decoder/reshape_12/Reshape/shape/2 
-PASTA_CTAE/decoder/reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2/
-PASTA_CTAE/decoder/reshape_12/Reshape/shape/3ю
+PASTA_CTAE/decoder/reshape_12/Reshape/shapePack4PASTA_CTAE/decoder/reshape_12/strided_slice:output:06PASTA_CTAE/decoder/reshape_12/Reshape/shape/1:output:06PASTA_CTAE/decoder/reshape_12/Reshape/shape/2:output:06PASTA_CTAE/decoder/reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2-
+PASTA_CTAE/decoder/reshape_12/Reshape/shapeљ
%PASTA_CTAE/decoder/reshape_12/ReshapeReshape.PASTA_CTAE/decoder/dense_29/Relu:activations:04PASTA_CTAE/decoder/reshape_12/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2'
%PASTA_CTAE/decoder/reshape_12/ReshapeЈ
#PASTA_CTAE/decoder/reshape_11/ShapeShape.PASTA_CTAE/decoder/dense_27/Relu:activations:0*
T0*
_output_shapes
:2%
#PASTA_CTAE/decoder/reshape_11/ShapeА
1PASTA_CTAE/decoder/reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1PASTA_CTAE/decoder/reshape_11/strided_slice/stackД
3PASTA_CTAE/decoder/reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3PASTA_CTAE/decoder/reshape_11/strided_slice/stack_1Д
3PASTA_CTAE/decoder/reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3PASTA_CTAE/decoder/reshape_11/strided_slice/stack_2
+PASTA_CTAE/decoder/reshape_11/strided_sliceStridedSlice,PASTA_CTAE/decoder/reshape_11/Shape:output:0:PASTA_CTAE/decoder/reshape_11/strided_slice/stack:output:0<PASTA_CTAE/decoder/reshape_11/strided_slice/stack_1:output:0<PASTA_CTAE/decoder/reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+PASTA_CTAE/decoder/reshape_11/strided_slice 
-PASTA_CTAE/decoder/reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-PASTA_CTAE/decoder/reshape_11/Reshape/shape/1 
-PASTA_CTAE/decoder/reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2/
-PASTA_CTAE/decoder/reshape_11/Reshape/shape/2 
-PASTA_CTAE/decoder/reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
2/
-PASTA_CTAE/decoder/reshape_11/Reshape/shape/3ю
+PASTA_CTAE/decoder/reshape_11/Reshape/shapePack4PASTA_CTAE/decoder/reshape_11/strided_slice:output:06PASTA_CTAE/decoder/reshape_11/Reshape/shape/1:output:06PASTA_CTAE/decoder/reshape_11/Reshape/shape/2:output:06PASTA_CTAE/decoder/reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2-
+PASTA_CTAE/decoder/reshape_11/Reshape/shapeљ
%PASTA_CTAE/decoder/reshape_11/ReshapeReshape.PASTA_CTAE/decoder/dense_27/Relu:activations:04PASTA_CTAE/decoder/reshape_11/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2'
%PASTA_CTAE/decoder/reshape_11/ReshapeЈ
#PASTA_CTAE/decoder/reshape_10/ShapeShape.PASTA_CTAE/decoder/dense_25/Relu:activations:0*
T0*
_output_shapes
:2%
#PASTA_CTAE/decoder/reshape_10/ShapeА
1PASTA_CTAE/decoder/reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1PASTA_CTAE/decoder/reshape_10/strided_slice/stackД
3PASTA_CTAE/decoder/reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3PASTA_CTAE/decoder/reshape_10/strided_slice/stack_1Д
3PASTA_CTAE/decoder/reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3PASTA_CTAE/decoder/reshape_10/strided_slice/stack_2
+PASTA_CTAE/decoder/reshape_10/strided_sliceStridedSlice,PASTA_CTAE/decoder/reshape_10/Shape:output:0:PASTA_CTAE/decoder/reshape_10/strided_slice/stack:output:0<PASTA_CTAE/decoder/reshape_10/strided_slice/stack_1:output:0<PASTA_CTAE/decoder/reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+PASTA_CTAE/decoder/reshape_10/strided_slice 
-PASTA_CTAE/decoder/reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-PASTA_CTAE/decoder/reshape_10/Reshape/shape/1ў
+PASTA_CTAE/decoder/reshape_10/Reshape/shapePack4PASTA_CTAE/decoder/reshape_10/strided_slice:output:06PASTA_CTAE/decoder/reshape_10/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+PASTA_CTAE/decoder/reshape_10/Reshape/shapeё
%PASTA_CTAE/decoder/reshape_10/ReshapeReshape.PASTA_CTAE/decoder/dense_25/Relu:activations:04PASTA_CTAE/decoder/reshape_10/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%PASTA_CTAE/decoder/reshape_10/ReshapeС
$PASTA_CTAE/decoder/softmax_2/SoftmaxSoftmax.PASTA_CTAE/decoder/reshape_12/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2&
$PASTA_CTAE/decoder/softmax_2/SoftmaxС
$PASTA_CTAE/decoder/softmax_1/SoftmaxSoftmax.PASTA_CTAE/decoder/reshape_11/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2&
$PASTA_CTAE/decoder/softmax_1/SoftmaxЕ
"PASTA_CTAE/decoder/softmax/SoftmaxSoftmax.PASTA_CTAE/decoder/reshape_10/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2$
"PASTA_CTAE/decoder/softmax/Softmax
IdentityIdentity,PASTA_CTAE/decoder/softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity.PASTA_CTAE/decoder/softmax_1/Softmax:softmax:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity.PASTA_CTAE/decoder/softmax_2/Softmax:softmax:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2ѓ
NoOpNoOp)^PASTA_CTAE/conv2d/BiasAdd/ReadVariableOp(^PASTA_CTAE/conv2d/Conv2D/ReadVariableOp+^PASTA_CTAE/conv2d_1/BiasAdd/ReadVariableOp*^PASTA_CTAE/conv2d_1/Conv2D/ReadVariableOp+^PASTA_CTAE/conv2d_2/BiasAdd/ReadVariableOp*^PASTA_CTAE/conv2d_2/Conv2D/ReadVariableOp+^PASTA_CTAE/conv2d_3/BiasAdd/ReadVariableOp*^PASTA_CTAE/conv2d_3/Conv2D/ReadVariableOp3^PASTA_CTAE/decoder/dense_23/BiasAdd/ReadVariableOp2^PASTA_CTAE/decoder/dense_23/MatMul/ReadVariableOp3^PASTA_CTAE/decoder/dense_24/BiasAdd/ReadVariableOp2^PASTA_CTAE/decoder/dense_24/MatMul/ReadVariableOp3^PASTA_CTAE/decoder/dense_25/BiasAdd/ReadVariableOp2^PASTA_CTAE/decoder/dense_25/MatMul/ReadVariableOp3^PASTA_CTAE/decoder/dense_26/BiasAdd/ReadVariableOp2^PASTA_CTAE/decoder/dense_26/MatMul/ReadVariableOp3^PASTA_CTAE/decoder/dense_27/BiasAdd/ReadVariableOp2^PASTA_CTAE/decoder/dense_27/MatMul/ReadVariableOp3^PASTA_CTAE/decoder/dense_28/BiasAdd/ReadVariableOp2^PASTA_CTAE/decoder/dense_28/MatMul/ReadVariableOp3^PASTA_CTAE/decoder/dense_29/BiasAdd/ReadVariableOp2^PASTA_CTAE/decoder/dense_29/MatMul/ReadVariableOp(^PASTA_CTAE/dense/BiasAdd/ReadVariableOp'^PASTA_CTAE/dense/MatMul/ReadVariableOp*^PASTA_CTAE/dense_1/BiasAdd/ReadVariableOp)^PASTA_CTAE/dense_1/MatMul/ReadVariableOp*^PASTA_CTAE/dense_2/BiasAdd/ReadVariableOp)^PASTA_CTAE/dense_2/MatMul/ReadVariableOp1^PASTA_CTAE/encoder_output/BiasAdd/ReadVariableOp0^PASTA_CTAE/encoder_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(PASTA_CTAE/conv2d/BiasAdd/ReadVariableOp(PASTA_CTAE/conv2d/BiasAdd/ReadVariableOp2R
'PASTA_CTAE/conv2d/Conv2D/ReadVariableOp'PASTA_CTAE/conv2d/Conv2D/ReadVariableOp2X
*PASTA_CTAE/conv2d_1/BiasAdd/ReadVariableOp*PASTA_CTAE/conv2d_1/BiasAdd/ReadVariableOp2V
)PASTA_CTAE/conv2d_1/Conv2D/ReadVariableOp)PASTA_CTAE/conv2d_1/Conv2D/ReadVariableOp2X
*PASTA_CTAE/conv2d_2/BiasAdd/ReadVariableOp*PASTA_CTAE/conv2d_2/BiasAdd/ReadVariableOp2V
)PASTA_CTAE/conv2d_2/Conv2D/ReadVariableOp)PASTA_CTAE/conv2d_2/Conv2D/ReadVariableOp2X
*PASTA_CTAE/conv2d_3/BiasAdd/ReadVariableOp*PASTA_CTAE/conv2d_3/BiasAdd/ReadVariableOp2V
)PASTA_CTAE/conv2d_3/Conv2D/ReadVariableOp)PASTA_CTAE/conv2d_3/Conv2D/ReadVariableOp2h
2PASTA_CTAE/decoder/dense_23/BiasAdd/ReadVariableOp2PASTA_CTAE/decoder/dense_23/BiasAdd/ReadVariableOp2f
1PASTA_CTAE/decoder/dense_23/MatMul/ReadVariableOp1PASTA_CTAE/decoder/dense_23/MatMul/ReadVariableOp2h
2PASTA_CTAE/decoder/dense_24/BiasAdd/ReadVariableOp2PASTA_CTAE/decoder/dense_24/BiasAdd/ReadVariableOp2f
1PASTA_CTAE/decoder/dense_24/MatMul/ReadVariableOp1PASTA_CTAE/decoder/dense_24/MatMul/ReadVariableOp2h
2PASTA_CTAE/decoder/dense_25/BiasAdd/ReadVariableOp2PASTA_CTAE/decoder/dense_25/BiasAdd/ReadVariableOp2f
1PASTA_CTAE/decoder/dense_25/MatMul/ReadVariableOp1PASTA_CTAE/decoder/dense_25/MatMul/ReadVariableOp2h
2PASTA_CTAE/decoder/dense_26/BiasAdd/ReadVariableOp2PASTA_CTAE/decoder/dense_26/BiasAdd/ReadVariableOp2f
1PASTA_CTAE/decoder/dense_26/MatMul/ReadVariableOp1PASTA_CTAE/decoder/dense_26/MatMul/ReadVariableOp2h
2PASTA_CTAE/decoder/dense_27/BiasAdd/ReadVariableOp2PASTA_CTAE/decoder/dense_27/BiasAdd/ReadVariableOp2f
1PASTA_CTAE/decoder/dense_27/MatMul/ReadVariableOp1PASTA_CTAE/decoder/dense_27/MatMul/ReadVariableOp2h
2PASTA_CTAE/decoder/dense_28/BiasAdd/ReadVariableOp2PASTA_CTAE/decoder/dense_28/BiasAdd/ReadVariableOp2f
1PASTA_CTAE/decoder/dense_28/MatMul/ReadVariableOp1PASTA_CTAE/decoder/dense_28/MatMul/ReadVariableOp2h
2PASTA_CTAE/decoder/dense_29/BiasAdd/ReadVariableOp2PASTA_CTAE/decoder/dense_29/BiasAdd/ReadVariableOp2f
1PASTA_CTAE/decoder/dense_29/MatMul/ReadVariableOp1PASTA_CTAE/decoder/dense_29/MatMul/ReadVariableOp2R
'PASTA_CTAE/dense/BiasAdd/ReadVariableOp'PASTA_CTAE/dense/BiasAdd/ReadVariableOp2P
&PASTA_CTAE/dense/MatMul/ReadVariableOp&PASTA_CTAE/dense/MatMul/ReadVariableOp2V
)PASTA_CTAE/dense_1/BiasAdd/ReadVariableOp)PASTA_CTAE/dense_1/BiasAdd/ReadVariableOp2T
(PASTA_CTAE/dense_1/MatMul/ReadVariableOp(PASTA_CTAE/dense_1/MatMul/ReadVariableOp2V
)PASTA_CTAE/dense_2/BiasAdd/ReadVariableOp)PASTA_CTAE/dense_2/BiasAdd/ReadVariableOp2T
(PASTA_CTAE/dense_2/MatMul/ReadVariableOp(PASTA_CTAE/dense_2/MatMul/ReadVariableOp2d
0PASTA_CTAE/encoder_output/BiasAdd/ReadVariableOp0PASTA_CTAE/encoder_output/BiasAdd/ReadVariableOp2b
/PASTA_CTAE/encoder_output/MatMul/ReadVariableOp/PASTA_CTAE/encoder_output/MatMul/ReadVariableOp:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1:XT
/
_output_shapes
:џџџџџџџџџ

!
_user_specified_name	input_2:XT
/
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_3
n
ў

E__inference_decoder_layer_call_and_return_conditional_losses_36937400

inputs9
'dense_23_matmul_readvariableop_resource:6
(dense_23_biasadd_readvariableop_resource:9
'dense_28_matmul_readvariableop_resource:6
(dense_28_biasadd_readvariableop_resource:9
'dense_26_matmul_readvariableop_resource:6
(dense_26_biasadd_readvariableop_resource:9
'dense_24_matmul_readvariableop_resource:6
(dense_24_biasadd_readvariableop_resource:9
'dense_29_matmul_readvariableop_resource:06
(dense_29_biasadd_readvariableop_resource:09
'dense_27_matmul_readvariableop_resource:d6
(dense_27_biasadd_readvariableop_resource:d9
'dense_25_matmul_readvariableop_resource:6
(dense_25_biasadd_readvariableop_resource:
identity

identity_1

identity_2Ђdense_23/BiasAdd/ReadVariableOpЂdense_23/MatMul/ReadVariableOpЂdense_24/BiasAdd/ReadVariableOpЂdense_24/MatMul/ReadVariableOpЂdense_25/BiasAdd/ReadVariableOpЂdense_25/MatMul/ReadVariableOpЂdense_26/BiasAdd/ReadVariableOpЂdense_26/MatMul/ReadVariableOpЂdense_27/BiasAdd/ReadVariableOpЂdense_27/MatMul/ReadVariableOpЂdense_28/BiasAdd/ReadVariableOpЂdense_28/MatMul/ReadVariableOpЂdense_29/BiasAdd/ReadVariableOpЂdense_29/MatMul/ReadVariableOpЈ
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_23/MatMul/ReadVariableOp
dense_23/MatMulMatMulinputs&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/MatMulЇ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpЅ
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/BiasAdds
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_23/ReluЈ
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_28/MatMul/ReadVariableOpЃ
dense_28/MatMulMatMuldense_23/Relu:activations:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_28/MatMulЇ
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_28/BiasAdd/ReadVariableOpЅ
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_28/BiasAdds
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_28/ReluЈ
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_26/MatMul/ReadVariableOpЃ
dense_26/MatMulMatMuldense_23/Relu:activations:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/MatMulЇ
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOpЅ
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/BiasAdds
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_26/ReluЈ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_24/MatMul/ReadVariableOpЃ
dense_24/MatMulMatMuldense_23/Relu:activations:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_24/MatMulЇ
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_24/BiasAdd/ReadVariableOpЅ
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_24/BiasAdds
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_24/ReluЈ
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

:0*
dtype02 
dense_29/MatMul/ReadVariableOpЃ
dense_29/MatMulMatMuldense_28/Relu:activations:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02
dense_29/MatMulЇ
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02!
dense_29/BiasAdd/ReadVariableOpЅ
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02
dense_29/BiasAdds
dense_29/ReluReludense_29/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ02
dense_29/ReluЈ
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_27/MatMul/ReadVariableOpЃ
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_27/MatMulЇ
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_27/BiasAdd/ReadVariableOpЅ
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_27/BiasAdds
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_27/ReluЈ
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_25/MatMul/ReadVariableOpЃ
dense_25/MatMulMatMuldense_24/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_25/MatMulЇ
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_25/BiasAdd/ReadVariableOpЅ
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_25/BiasAdds
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_25/Reluo
reshape_12/ShapeShapedense_29/Relu:activations:0*
T0*
_output_shapes
:2
reshape_12/Shape
reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_12/strided_slice/stack
 reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_1
 reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_2Є
reshape_12/strided_sliceStridedSlicereshape_12/Shape:output:0'reshape_12/strided_slice/stack:output:0)reshape_12/strided_slice/stack_1:output:0)reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_12/strided_slicez
reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/1z
reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/2z
reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/3ќ
reshape_12/Reshape/shapePack!reshape_12/strided_slice:output:0#reshape_12/Reshape/shape/1:output:0#reshape_12/Reshape/shape/2:output:0#reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_12/Reshape/shape­
reshape_12/ReshapeReshapedense_29/Relu:activations:0!reshape_12/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
reshape_12/Reshapeo
reshape_11/ShapeShapedense_27/Relu:activations:0*
T0*
_output_shapes
:2
reshape_11/Shape
reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_11/strided_slice/stack
 reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_1
 reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_2Є
reshape_11/strided_sliceStridedSlicereshape_11/Shape:output:0'reshape_11/strided_slice/stack:output:0)reshape_11/strided_slice/stack_1:output:0)reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_11/strided_slicez
reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/1z
reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/2z
reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
2
reshape_11/Reshape/shape/3ќ
reshape_11/Reshape/shapePack!reshape_11/strided_slice:output:0#reshape_11/Reshape/shape/1:output:0#reshape_11/Reshape/shape/2:output:0#reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_11/Reshape/shape­
reshape_11/ReshapeReshapedense_27/Relu:activations:0!reshape_11/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2
reshape_11/Reshapeo
reshape_10/ShapeShapedense_25/Relu:activations:0*
T0*
_output_shapes
:2
reshape_10/Shape
reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_10/strided_slice/stack
 reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_1
 reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_2Є
reshape_10/strided_sliceStridedSlicereshape_10/Shape:output:0'reshape_10/strided_slice/stack:output:0)reshape_10/strided_slice/stack_1:output:0)reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_10/strided_slicez
reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_10/Reshape/shape/1В
reshape_10/Reshape/shapePack!reshape_10/strided_slice:output:0#reshape_10/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_10/Reshape/shapeЅ
reshape_10/ReshapeReshapedense_25/Relu:activations:0!reshape_10/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
reshape_10/Reshape
softmax_2/SoftmaxSoftmaxreshape_12/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
softmax_2/Softmax
softmax_1/SoftmaxSoftmaxreshape_11/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2
softmax_1/Softmax|
softmax/SoftmaxSoftmaxreshape_10/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
softmax/Softmaxt
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identitysoftmax_1/Softmax:softmax:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identitysoftmax_2/Softmax:softmax:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2Ѓ
NoOpNoOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : : : 2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ёз
Ы
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936767
inputs_0
inputs_1
inputs_2A
'conv2d_2_conv2d_readvariableop_resource:6
(conv2d_2_biasadd_readvariableop_resource:?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:	6
(conv2d_1_biasadd_readvariableop_resource:6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:?
-encoder_output_matmul_readvariableop_resource:0<
.encoder_output_biasadd_readvariableop_resource:A
/decoder_dense_23_matmul_readvariableop_resource:>
0decoder_dense_23_biasadd_readvariableop_resource:A
/decoder_dense_28_matmul_readvariableop_resource:>
0decoder_dense_28_biasadd_readvariableop_resource:A
/decoder_dense_26_matmul_readvariableop_resource:>
0decoder_dense_26_biasadd_readvariableop_resource:A
/decoder_dense_24_matmul_readvariableop_resource:>
0decoder_dense_24_biasadd_readvariableop_resource:A
/decoder_dense_29_matmul_readvariableop_resource:0>
0decoder_dense_29_biasadd_readvariableop_resource:0A
/decoder_dense_27_matmul_readvariableop_resource:d>
0decoder_dense_27_biasadd_readvariableop_resource:dA
/decoder_dense_25_matmul_readvariableop_resource:>
0decoder_dense_25_biasadd_readvariableop_resource:
identity

identity_1

identity_2Ђconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂ'decoder/dense_23/BiasAdd/ReadVariableOpЂ&decoder/dense_23/MatMul/ReadVariableOpЂ'decoder/dense_24/BiasAdd/ReadVariableOpЂ&decoder/dense_24/MatMul/ReadVariableOpЂ'decoder/dense_25/BiasAdd/ReadVariableOpЂ&decoder/dense_25/MatMul/ReadVariableOpЂ'decoder/dense_26/BiasAdd/ReadVariableOpЂ&decoder/dense_26/MatMul/ReadVariableOpЂ'decoder/dense_27/BiasAdd/ReadVariableOpЂ&decoder/dense_27/MatMul/ReadVariableOpЂ'decoder/dense_28/BiasAdd/ReadVariableOpЂ&decoder/dense_28/MatMul/ReadVariableOpЂ'decoder/dense_29/BiasAdd/ReadVariableOpЂ&decoder/dense_29/MatMul/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂ%encoder_output/BiasAdd/ReadVariableOpЂ$encoder_output/MatMul/ReadVariableOpА
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_2/Conv2D/ReadVariableOpи
conv2d_2/Conv2DConv2Dinputs_2&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingVALID*
strides
2
conv2d_2/Conv2DЇ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpУ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_2/ReluЊ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOpв
conv2d/Conv2DConv2Dinputs_1$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
data_formatNCHW*
paddingVALID*
strides
2
conv2d/Conv2DЁ
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOpЛ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
data_formatNCHW2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ	2
conv2d/ReluЦ
max_pooling2d_1/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolР
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ	*
ksize
*
paddingSAME*
strides
2
max_pooling2d/MaxPoolА
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOpй
conv2d_3/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
conv2d_3/Conv2DЇ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpЌ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_3/BiasAdd{
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_3/ReluА
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype02 
conv2d_1/Conv2D/ReadVariableOpз
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
conv2d_1/Conv2DЇ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpЌ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_1/Relus
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten_1/Const
flatten_1/ReshapeReshapeconv2d_3/Relu:activations:0flatten_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
flatten_1/Reshapeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten/Const
flatten/ReshapeReshapeconv2d_1/Relu:activations:0flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
flatten/Reshape
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulinputs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

dense/ReluЅ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/ReluЅ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/MatMulЄ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOpЁ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/BiasAddp
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/Relux
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axisщ
concatenate_2/concatConcatV2dense/Relu:activations:0dense_1/Relu:activations:0dense_2/Relu:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ02
concatenate_2/concatК
$encoder_output/MatMul/ReadVariableOpReadVariableOp-encoder_output_matmul_readvariableop_resource*
_output_shapes

:0*
dtype02&
$encoder_output/MatMul/ReadVariableOpЗ
encoder_output/MatMulMatMulconcatenate_2/concat:output:0,encoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
encoder_output/MatMulЙ
%encoder_output/BiasAdd/ReadVariableOpReadVariableOp.encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%encoder_output/BiasAdd/ReadVariableOpН
encoder_output/BiasAddBiasAddencoder_output/MatMul:product:0-encoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
encoder_output/BiasAddР
&decoder/dense_23/MatMul/ReadVariableOpReadVariableOp/decoder_dense_23_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&decoder/dense_23/MatMul/ReadVariableOpП
decoder/dense_23/MatMulMatMulencoder_output/BiasAdd:output:0.decoder/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_23/MatMulП
'decoder/dense_23/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_23/BiasAdd/ReadVariableOpХ
decoder/dense_23/BiasAddBiasAdd!decoder/dense_23/MatMul:product:0/decoder/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_23/BiasAdd
decoder/dense_23/ReluRelu!decoder/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_23/ReluР
&decoder/dense_28/MatMul/ReadVariableOpReadVariableOp/decoder_dense_28_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&decoder/dense_28/MatMul/ReadVariableOpУ
decoder/dense_28/MatMulMatMul#decoder/dense_23/Relu:activations:0.decoder/dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_28/MatMulП
'decoder/dense_28/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_28/BiasAdd/ReadVariableOpХ
decoder/dense_28/BiasAddBiasAdd!decoder/dense_28/MatMul:product:0/decoder/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_28/BiasAdd
decoder/dense_28/ReluRelu!decoder/dense_28/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_28/ReluР
&decoder/dense_26/MatMul/ReadVariableOpReadVariableOp/decoder_dense_26_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&decoder/dense_26/MatMul/ReadVariableOpУ
decoder/dense_26/MatMulMatMul#decoder/dense_23/Relu:activations:0.decoder/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_26/MatMulП
'decoder/dense_26/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_26/BiasAdd/ReadVariableOpХ
decoder/dense_26/BiasAddBiasAdd!decoder/dense_26/MatMul:product:0/decoder/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_26/BiasAdd
decoder/dense_26/ReluRelu!decoder/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_26/ReluР
&decoder/dense_24/MatMul/ReadVariableOpReadVariableOp/decoder_dense_24_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&decoder/dense_24/MatMul/ReadVariableOpУ
decoder/dense_24/MatMulMatMul#decoder/dense_23/Relu:activations:0.decoder/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_24/MatMulП
'decoder/dense_24/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_24/BiasAdd/ReadVariableOpХ
decoder/dense_24/BiasAddBiasAdd!decoder/dense_24/MatMul:product:0/decoder/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_24/BiasAdd
decoder/dense_24/ReluRelu!decoder/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_24/ReluР
&decoder/dense_29/MatMul/ReadVariableOpReadVariableOp/decoder_dense_29_matmul_readvariableop_resource*
_output_shapes

:0*
dtype02(
&decoder/dense_29/MatMul/ReadVariableOpУ
decoder/dense_29/MatMulMatMul#decoder/dense_28/Relu:activations:0.decoder/dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02
decoder/dense_29/MatMulП
'decoder/dense_29/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_29_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02)
'decoder/dense_29/BiasAdd/ReadVariableOpХ
decoder/dense_29/BiasAddBiasAdd!decoder/dense_29/MatMul:product:0/decoder/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02
decoder/dense_29/BiasAdd
decoder/dense_29/ReluRelu!decoder/dense_29/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ02
decoder/dense_29/ReluР
&decoder/dense_27/MatMul/ReadVariableOpReadVariableOp/decoder_dense_27_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02(
&decoder/dense_27/MatMul/ReadVariableOpУ
decoder/dense_27/MatMulMatMul#decoder/dense_26/Relu:activations:0.decoder/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
decoder/dense_27/MatMulП
'decoder/dense_27/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_27_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02)
'decoder/dense_27/BiasAdd/ReadVariableOpХ
decoder/dense_27/BiasAddBiasAdd!decoder/dense_27/MatMul:product:0/decoder/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
decoder/dense_27/BiasAdd
decoder/dense_27/ReluRelu!decoder/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
decoder/dense_27/ReluР
&decoder/dense_25/MatMul/ReadVariableOpReadVariableOp/decoder_dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&decoder/dense_25/MatMul/ReadVariableOpУ
decoder/dense_25/MatMulMatMul#decoder/dense_24/Relu:activations:0.decoder/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_25/MatMulП
'decoder/dense_25/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_25/BiasAdd/ReadVariableOpХ
decoder/dense_25/BiasAddBiasAdd!decoder/dense_25/MatMul:product:0/decoder/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_25/BiasAdd
decoder/dense_25/ReluRelu!decoder/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_25/Relu
decoder/reshape_12/ShapeShape#decoder/dense_29/Relu:activations:0*
T0*
_output_shapes
:2
decoder/reshape_12/Shape
&decoder/reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&decoder/reshape_12/strided_slice/stack
(decoder/reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_12/strided_slice/stack_1
(decoder/reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_12/strided_slice/stack_2д
 decoder/reshape_12/strided_sliceStridedSlice!decoder/reshape_12/Shape:output:0/decoder/reshape_12/strided_slice/stack:output:01decoder/reshape_12/strided_slice/stack_1:output:01decoder/reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 decoder/reshape_12/strided_slice
"decoder/reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_12/Reshape/shape/1
"decoder/reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_12/Reshape/shape/2
"decoder/reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_12/Reshape/shape/3Ќ
 decoder/reshape_12/Reshape/shapePack)decoder/reshape_12/strided_slice:output:0+decoder/reshape_12/Reshape/shape/1:output:0+decoder/reshape_12/Reshape/shape/2:output:0+decoder/reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 decoder/reshape_12/Reshape/shapeЭ
decoder/reshape_12/ReshapeReshape#decoder/dense_29/Relu:activations:0)decoder/reshape_12/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
decoder/reshape_12/Reshape
decoder/reshape_11/ShapeShape#decoder/dense_27/Relu:activations:0*
T0*
_output_shapes
:2
decoder/reshape_11/Shape
&decoder/reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&decoder/reshape_11/strided_slice/stack
(decoder/reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_11/strided_slice/stack_1
(decoder/reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_11/strided_slice/stack_2д
 decoder/reshape_11/strided_sliceStridedSlice!decoder/reshape_11/Shape:output:0/decoder/reshape_11/strided_slice/stack:output:01decoder/reshape_11/strided_slice/stack_1:output:01decoder/reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 decoder/reshape_11/strided_slice
"decoder/reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_11/Reshape/shape/1
"decoder/reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_11/Reshape/shape/2
"decoder/reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
2$
"decoder/reshape_11/Reshape/shape/3Ќ
 decoder/reshape_11/Reshape/shapePack)decoder/reshape_11/strided_slice:output:0+decoder/reshape_11/Reshape/shape/1:output:0+decoder/reshape_11/Reshape/shape/2:output:0+decoder/reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 decoder/reshape_11/Reshape/shapeЭ
decoder/reshape_11/ReshapeReshape#decoder/dense_27/Relu:activations:0)decoder/reshape_11/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2
decoder/reshape_11/Reshape
decoder/reshape_10/ShapeShape#decoder/dense_25/Relu:activations:0*
T0*
_output_shapes
:2
decoder/reshape_10/Shape
&decoder/reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&decoder/reshape_10/strided_slice/stack
(decoder/reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_10/strided_slice/stack_1
(decoder/reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_10/strided_slice/stack_2д
 decoder/reshape_10/strided_sliceStridedSlice!decoder/reshape_10/Shape:output:0/decoder/reshape_10/strided_slice/stack:output:01decoder/reshape_10/strided_slice/stack_1:output:01decoder/reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 decoder/reshape_10/strided_slice
"decoder/reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_10/Reshape/shape/1в
 decoder/reshape_10/Reshape/shapePack)decoder/reshape_10/strided_slice:output:0+decoder/reshape_10/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 decoder/reshape_10/Reshape/shapeХ
decoder/reshape_10/ReshapeReshape#decoder/dense_25/Relu:activations:0)decoder/reshape_10/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/reshape_10/Reshape 
decoder/softmax_2/SoftmaxSoftmax#decoder/reshape_12/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
decoder/softmax_2/Softmax 
decoder/softmax_1/SoftmaxSoftmax#decoder/reshape_11/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2
decoder/softmax_1/Softmax
decoder/softmax/SoftmaxSoftmax#decoder/reshape_10/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/softmax/Softmax|
IdentityIdentity!decoder/softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity#decoder/softmax_1/Softmax:softmax:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity#decoder/softmax_2/Softmax:softmax:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2Љ	
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp(^decoder/dense_23/BiasAdd/ReadVariableOp'^decoder/dense_23/MatMul/ReadVariableOp(^decoder/dense_24/BiasAdd/ReadVariableOp'^decoder/dense_24/MatMul/ReadVariableOp(^decoder/dense_25/BiasAdd/ReadVariableOp'^decoder/dense_25/MatMul/ReadVariableOp(^decoder/dense_26/BiasAdd/ReadVariableOp'^decoder/dense_26/MatMul/ReadVariableOp(^decoder/dense_27/BiasAdd/ReadVariableOp'^decoder/dense_27/MatMul/ReadVariableOp(^decoder/dense_28/BiasAdd/ReadVariableOp'^decoder/dense_28/MatMul/ReadVariableOp(^decoder/dense_29/BiasAdd/ReadVariableOp'^decoder/dense_29/MatMul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp&^encoder_output/BiasAdd/ReadVariableOp%^encoder_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2R
'decoder/dense_23/BiasAdd/ReadVariableOp'decoder/dense_23/BiasAdd/ReadVariableOp2P
&decoder/dense_23/MatMul/ReadVariableOp&decoder/dense_23/MatMul/ReadVariableOp2R
'decoder/dense_24/BiasAdd/ReadVariableOp'decoder/dense_24/BiasAdd/ReadVariableOp2P
&decoder/dense_24/MatMul/ReadVariableOp&decoder/dense_24/MatMul/ReadVariableOp2R
'decoder/dense_25/BiasAdd/ReadVariableOp'decoder/dense_25/BiasAdd/ReadVariableOp2P
&decoder/dense_25/MatMul/ReadVariableOp&decoder/dense_25/MatMul/ReadVariableOp2R
'decoder/dense_26/BiasAdd/ReadVariableOp'decoder/dense_26/BiasAdd/ReadVariableOp2P
&decoder/dense_26/MatMul/ReadVariableOp&decoder/dense_26/MatMul/ReadVariableOp2R
'decoder/dense_27/BiasAdd/ReadVariableOp'decoder/dense_27/BiasAdd/ReadVariableOp2P
&decoder/dense_27/MatMul/ReadVariableOp&decoder/dense_27/MatMul/ReadVariableOp2R
'decoder/dense_28/BiasAdd/ReadVariableOp'decoder/dense_28/BiasAdd/ReadVariableOp2P
&decoder/dense_28/MatMul/ReadVariableOp&decoder/dense_28/MatMul/ReadVariableOp2R
'decoder/dense_29/BiasAdd/ReadVariableOp'decoder/dense_29/BiasAdd/ReadVariableOp2P
&decoder/dense_29/MatMul/ReadVariableOp&decoder/dense_29/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2N
%encoder_output/BiasAdd/ReadVariableOp%encoder_output/BiasAdd/ReadVariableOp2L
$encoder_output/MatMul/ReadVariableOp$encoder_output/MatMul/ReadVariableOp:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
inputs/1:YU
/
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2

ї
F__inference_dense_24_layer_call_and_return_conditional_losses_36935021

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_36934917

inputs
identityЌ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

c
G__inference_softmax_1_layer_call_and_return_conditional_losses_36935136

inputs
identity_
SoftmaxSoftmaxinputs*
T0*/
_output_shapes
:џџџџџџџџџ
2	
Softmaxm
IdentityIdentitySoftmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
:W S
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ё
 
+__inference_conv2d_1_layer_call_fn_36937007

inputs!
unknown:	
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_369356262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ	: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ	
 
_user_specified_nameinputs
ј

+__inference_dense_28_layer_call_fn_36937469

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_28_layer_call_and_return_conditional_losses_369349872
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
э
џ
F__inference_conv2d_1_layer_call_and_return_conditional_losses_36935626

inputs8
conv2d_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:	*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ	
 
_user_specified_nameinputs

ї
F__inference_dense_26_layer_call_and_return_conditional_losses_36935004

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ёз
Ы
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936918
inputs_0
inputs_1
inputs_2A
'conv2d_2_conv2d_readvariableop_resource:6
(conv2d_2_biasadd_readvariableop_resource:?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:	6
(conv2d_1_biasadd_readvariableop_resource:6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:?
-encoder_output_matmul_readvariableop_resource:0<
.encoder_output_biasadd_readvariableop_resource:A
/decoder_dense_23_matmul_readvariableop_resource:>
0decoder_dense_23_biasadd_readvariableop_resource:A
/decoder_dense_28_matmul_readvariableop_resource:>
0decoder_dense_28_biasadd_readvariableop_resource:A
/decoder_dense_26_matmul_readvariableop_resource:>
0decoder_dense_26_biasadd_readvariableop_resource:A
/decoder_dense_24_matmul_readvariableop_resource:>
0decoder_dense_24_biasadd_readvariableop_resource:A
/decoder_dense_29_matmul_readvariableop_resource:0>
0decoder_dense_29_biasadd_readvariableop_resource:0A
/decoder_dense_27_matmul_readvariableop_resource:d>
0decoder_dense_27_biasadd_readvariableop_resource:dA
/decoder_dense_25_matmul_readvariableop_resource:>
0decoder_dense_25_biasadd_readvariableop_resource:
identity

identity_1

identity_2Ђconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂ'decoder/dense_23/BiasAdd/ReadVariableOpЂ&decoder/dense_23/MatMul/ReadVariableOpЂ'decoder/dense_24/BiasAdd/ReadVariableOpЂ&decoder/dense_24/MatMul/ReadVariableOpЂ'decoder/dense_25/BiasAdd/ReadVariableOpЂ&decoder/dense_25/MatMul/ReadVariableOpЂ'decoder/dense_26/BiasAdd/ReadVariableOpЂ&decoder/dense_26/MatMul/ReadVariableOpЂ'decoder/dense_27/BiasAdd/ReadVariableOpЂ&decoder/dense_27/MatMul/ReadVariableOpЂ'decoder/dense_28/BiasAdd/ReadVariableOpЂ&decoder/dense_28/MatMul/ReadVariableOpЂ'decoder/dense_29/BiasAdd/ReadVariableOpЂ&decoder/dense_29/MatMul/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂ%encoder_output/BiasAdd/ReadVariableOpЂ$encoder_output/MatMul/ReadVariableOpА
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_2/Conv2D/ReadVariableOpи
conv2d_2/Conv2DConv2Dinputs_2&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingVALID*
strides
2
conv2d_2/Conv2DЇ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpУ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_2/ReluЊ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOpв
conv2d/Conv2DConv2Dinputs_1$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
data_formatNCHW*
paddingVALID*
strides
2
conv2d/Conv2DЁ
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOpЛ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
data_formatNCHW2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ	2
conv2d/ReluЦ
max_pooling2d_1/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolР
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ	*
ksize
*
paddingSAME*
strides
2
max_pooling2d/MaxPoolА
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOpй
conv2d_3/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
conv2d_3/Conv2DЇ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpЌ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_3/BiasAdd{
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_3/ReluА
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype02 
conv2d_1/Conv2D/ReadVariableOpз
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
conv2d_1/Conv2DЇ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpЌ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_1/Relus
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten_1/Const
flatten_1/ReshapeReshapeconv2d_3/Relu:activations:0flatten_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
flatten_1/Reshapeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten/Const
flatten/ReshapeReshapeconv2d_1/Relu:activations:0flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
flatten/Reshape
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulinputs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

dense/ReluЅ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/ReluЅ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/MatMulЄ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOpЁ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/BiasAddp
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/Relux
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axisщ
concatenate_2/concatConcatV2dense/Relu:activations:0dense_1/Relu:activations:0dense_2/Relu:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ02
concatenate_2/concatК
$encoder_output/MatMul/ReadVariableOpReadVariableOp-encoder_output_matmul_readvariableop_resource*
_output_shapes

:0*
dtype02&
$encoder_output/MatMul/ReadVariableOpЗ
encoder_output/MatMulMatMulconcatenate_2/concat:output:0,encoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
encoder_output/MatMulЙ
%encoder_output/BiasAdd/ReadVariableOpReadVariableOp.encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%encoder_output/BiasAdd/ReadVariableOpН
encoder_output/BiasAddBiasAddencoder_output/MatMul:product:0-encoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
encoder_output/BiasAddР
&decoder/dense_23/MatMul/ReadVariableOpReadVariableOp/decoder_dense_23_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&decoder/dense_23/MatMul/ReadVariableOpП
decoder/dense_23/MatMulMatMulencoder_output/BiasAdd:output:0.decoder/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_23/MatMulП
'decoder/dense_23/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_23/BiasAdd/ReadVariableOpХ
decoder/dense_23/BiasAddBiasAdd!decoder/dense_23/MatMul:product:0/decoder/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_23/BiasAdd
decoder/dense_23/ReluRelu!decoder/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_23/ReluР
&decoder/dense_28/MatMul/ReadVariableOpReadVariableOp/decoder_dense_28_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&decoder/dense_28/MatMul/ReadVariableOpУ
decoder/dense_28/MatMulMatMul#decoder/dense_23/Relu:activations:0.decoder/dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_28/MatMulП
'decoder/dense_28/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_28/BiasAdd/ReadVariableOpХ
decoder/dense_28/BiasAddBiasAdd!decoder/dense_28/MatMul:product:0/decoder/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_28/BiasAdd
decoder/dense_28/ReluRelu!decoder/dense_28/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_28/ReluР
&decoder/dense_26/MatMul/ReadVariableOpReadVariableOp/decoder_dense_26_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&decoder/dense_26/MatMul/ReadVariableOpУ
decoder/dense_26/MatMulMatMul#decoder/dense_23/Relu:activations:0.decoder/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_26/MatMulП
'decoder/dense_26/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_26/BiasAdd/ReadVariableOpХ
decoder/dense_26/BiasAddBiasAdd!decoder/dense_26/MatMul:product:0/decoder/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_26/BiasAdd
decoder/dense_26/ReluRelu!decoder/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_26/ReluР
&decoder/dense_24/MatMul/ReadVariableOpReadVariableOp/decoder_dense_24_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&decoder/dense_24/MatMul/ReadVariableOpУ
decoder/dense_24/MatMulMatMul#decoder/dense_23/Relu:activations:0.decoder/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_24/MatMulП
'decoder/dense_24/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_24/BiasAdd/ReadVariableOpХ
decoder/dense_24/BiasAddBiasAdd!decoder/dense_24/MatMul:product:0/decoder/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_24/BiasAdd
decoder/dense_24/ReluRelu!decoder/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_24/ReluР
&decoder/dense_29/MatMul/ReadVariableOpReadVariableOp/decoder_dense_29_matmul_readvariableop_resource*
_output_shapes

:0*
dtype02(
&decoder/dense_29/MatMul/ReadVariableOpУ
decoder/dense_29/MatMulMatMul#decoder/dense_28/Relu:activations:0.decoder/dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02
decoder/dense_29/MatMulП
'decoder/dense_29/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_29_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02)
'decoder/dense_29/BiasAdd/ReadVariableOpХ
decoder/dense_29/BiasAddBiasAdd!decoder/dense_29/MatMul:product:0/decoder/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ02
decoder/dense_29/BiasAdd
decoder/dense_29/ReluRelu!decoder/dense_29/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ02
decoder/dense_29/ReluР
&decoder/dense_27/MatMul/ReadVariableOpReadVariableOp/decoder_dense_27_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02(
&decoder/dense_27/MatMul/ReadVariableOpУ
decoder/dense_27/MatMulMatMul#decoder/dense_26/Relu:activations:0.decoder/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
decoder/dense_27/MatMulП
'decoder/dense_27/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_27_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02)
'decoder/dense_27/BiasAdd/ReadVariableOpХ
decoder/dense_27/BiasAddBiasAdd!decoder/dense_27/MatMul:product:0/decoder/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
decoder/dense_27/BiasAdd
decoder/dense_27/ReluRelu!decoder/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
decoder/dense_27/ReluР
&decoder/dense_25/MatMul/ReadVariableOpReadVariableOp/decoder_dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&decoder/dense_25/MatMul/ReadVariableOpУ
decoder/dense_25/MatMulMatMul#decoder/dense_24/Relu:activations:0.decoder/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_25/MatMulП
'decoder/dense_25/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'decoder/dense_25/BiasAdd/ReadVariableOpХ
decoder/dense_25/BiasAddBiasAdd!decoder/dense_25/MatMul:product:0/decoder/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_25/BiasAdd
decoder/dense_25/ReluRelu!decoder/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/dense_25/Relu
decoder/reshape_12/ShapeShape#decoder/dense_29/Relu:activations:0*
T0*
_output_shapes
:2
decoder/reshape_12/Shape
&decoder/reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&decoder/reshape_12/strided_slice/stack
(decoder/reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_12/strided_slice/stack_1
(decoder/reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_12/strided_slice/stack_2д
 decoder/reshape_12/strided_sliceStridedSlice!decoder/reshape_12/Shape:output:0/decoder/reshape_12/strided_slice/stack:output:01decoder/reshape_12/strided_slice/stack_1:output:01decoder/reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 decoder/reshape_12/strided_slice
"decoder/reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_12/Reshape/shape/1
"decoder/reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_12/Reshape/shape/2
"decoder/reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_12/Reshape/shape/3Ќ
 decoder/reshape_12/Reshape/shapePack)decoder/reshape_12/strided_slice:output:0+decoder/reshape_12/Reshape/shape/1:output:0+decoder/reshape_12/Reshape/shape/2:output:0+decoder/reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 decoder/reshape_12/Reshape/shapeЭ
decoder/reshape_12/ReshapeReshape#decoder/dense_29/Relu:activations:0)decoder/reshape_12/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
decoder/reshape_12/Reshape
decoder/reshape_11/ShapeShape#decoder/dense_27/Relu:activations:0*
T0*
_output_shapes
:2
decoder/reshape_11/Shape
&decoder/reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&decoder/reshape_11/strided_slice/stack
(decoder/reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_11/strided_slice/stack_1
(decoder/reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_11/strided_slice/stack_2д
 decoder/reshape_11/strided_sliceStridedSlice!decoder/reshape_11/Shape:output:0/decoder/reshape_11/strided_slice/stack:output:01decoder/reshape_11/strided_slice/stack_1:output:01decoder/reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 decoder/reshape_11/strided_slice
"decoder/reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_11/Reshape/shape/1
"decoder/reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_11/Reshape/shape/2
"decoder/reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
2$
"decoder/reshape_11/Reshape/shape/3Ќ
 decoder/reshape_11/Reshape/shapePack)decoder/reshape_11/strided_slice:output:0+decoder/reshape_11/Reshape/shape/1:output:0+decoder/reshape_11/Reshape/shape/2:output:0+decoder/reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 decoder/reshape_11/Reshape/shapeЭ
decoder/reshape_11/ReshapeReshape#decoder/dense_27/Relu:activations:0)decoder/reshape_11/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2
decoder/reshape_11/Reshape
decoder/reshape_10/ShapeShape#decoder/dense_25/Relu:activations:0*
T0*
_output_shapes
:2
decoder/reshape_10/Shape
&decoder/reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&decoder/reshape_10/strided_slice/stack
(decoder/reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_10/strided_slice/stack_1
(decoder/reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(decoder/reshape_10/strided_slice/stack_2д
 decoder/reshape_10/strided_sliceStridedSlice!decoder/reshape_10/Shape:output:0/decoder/reshape_10/strided_slice/stack:output:01decoder/reshape_10/strided_slice/stack_1:output:01decoder/reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 decoder/reshape_10/strided_slice
"decoder/reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/reshape_10/Reshape/shape/1в
 decoder/reshape_10/Reshape/shapePack)decoder/reshape_10/strided_slice:output:0+decoder/reshape_10/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 decoder/reshape_10/Reshape/shapeХ
decoder/reshape_10/ReshapeReshape#decoder/dense_25/Relu:activations:0)decoder/reshape_10/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/reshape_10/Reshape 
decoder/softmax_2/SoftmaxSoftmax#decoder/reshape_12/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
decoder/softmax_2/Softmax 
decoder/softmax_1/SoftmaxSoftmax#decoder/reshape_11/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2
decoder/softmax_1/Softmax
decoder/softmax/SoftmaxSoftmax#decoder/reshape_10/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
decoder/softmax/Softmax|
IdentityIdentity!decoder/softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity#decoder/softmax_1/Softmax:softmax:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity#decoder/softmax_2/Softmax:softmax:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2Љ	
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp(^decoder/dense_23/BiasAdd/ReadVariableOp'^decoder/dense_23/MatMul/ReadVariableOp(^decoder/dense_24/BiasAdd/ReadVariableOp'^decoder/dense_24/MatMul/ReadVariableOp(^decoder/dense_25/BiasAdd/ReadVariableOp'^decoder/dense_25/MatMul/ReadVariableOp(^decoder/dense_26/BiasAdd/ReadVariableOp'^decoder/dense_26/MatMul/ReadVariableOp(^decoder/dense_27/BiasAdd/ReadVariableOp'^decoder/dense_27/MatMul/ReadVariableOp(^decoder/dense_28/BiasAdd/ReadVariableOp'^decoder/dense_28/MatMul/ReadVariableOp(^decoder/dense_29/BiasAdd/ReadVariableOp'^decoder/dense_29/MatMul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp&^encoder_output/BiasAdd/ReadVariableOp%^encoder_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2R
'decoder/dense_23/BiasAdd/ReadVariableOp'decoder/dense_23/BiasAdd/ReadVariableOp2P
&decoder/dense_23/MatMul/ReadVariableOp&decoder/dense_23/MatMul/ReadVariableOp2R
'decoder/dense_24/BiasAdd/ReadVariableOp'decoder/dense_24/BiasAdd/ReadVariableOp2P
&decoder/dense_24/MatMul/ReadVariableOp&decoder/dense_24/MatMul/ReadVariableOp2R
'decoder/dense_25/BiasAdd/ReadVariableOp'decoder/dense_25/BiasAdd/ReadVariableOp2P
&decoder/dense_25/MatMul/ReadVariableOp&decoder/dense_25/MatMul/ReadVariableOp2R
'decoder/dense_26/BiasAdd/ReadVariableOp'decoder/dense_26/BiasAdd/ReadVariableOp2P
&decoder/dense_26/MatMul/ReadVariableOp&decoder/dense_26/MatMul/ReadVariableOp2R
'decoder/dense_27/BiasAdd/ReadVariableOp'decoder/dense_27/BiasAdd/ReadVariableOp2P
&decoder/dense_27/MatMul/ReadVariableOp&decoder/dense_27/MatMul/ReadVariableOp2R
'decoder/dense_28/BiasAdd/ReadVariableOp'decoder/dense_28/BiasAdd/ReadVariableOp2P
&decoder/dense_28/MatMul/ReadVariableOp&decoder/dense_28/MatMul/ReadVariableOp2R
'decoder/dense_29/BiasAdd/ReadVariableOp'decoder/dense_29/BiasAdd/ReadVariableOp2P
&decoder/dense_29/MatMul/ReadVariableOp&decoder/dense_29/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2N
%encoder_output/BiasAdd/ReadVariableOp%encoder_output/BiasAdd/ReadVariableOp2L
$encoder_output/MatMul/ReadVariableOp$encoder_output/MatMul/ReadVariableOp:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
inputs/1:YU
/
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2
ђ

(__inference_dense_layer_call_fn_36937069

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_369356592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
M

H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36935759

inputs
inputs_1
inputs_2+
conv2d_2_36935564:
conv2d_2_36935566:)
conv2d_36935581:
conv2d_36935583:+
conv2d_3_36935610:
conv2d_3_36935612:+
conv2d_1_36935627:	
conv2d_1_36935629: 
dense_36935660:
dense_36935662:"
dense_1_36935677:
dense_1_36935679:"
dense_2_36935694:
dense_2_36935696:)
encoder_output_36935720:0%
encoder_output_36935722:"
decoder_36935725:
decoder_36935727:"
decoder_36935729:
decoder_36935731:"
decoder_36935733:
decoder_36935735:"
decoder_36935737:
decoder_36935739:"
decoder_36935741:0
decoder_36935743:0"
decoder_36935745:d
decoder_36935747:d"
decoder_36935749:
decoder_36935751:
identity

identity_1

identity_2Ђconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂdecoder/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂ&encoder_output/StatefulPartitionedCallЇ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputs_2conv2d_2_36935564conv2d_2_36935566*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_369355632"
 conv2d_2/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputs_1conv2d_36935581conv2d_36935583*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_369355802 
conv2d/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_369355902!
max_pooling2d_1/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_369355962
max_pooling2d/PartitionedCallЧ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_3_36935610conv2d_3_36935612*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_369356092"
 conv2d_3/StatefulPartitionedCallХ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_36935627conv2d_1_36935629*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_369356262"
 conv2d_1/StatefulPartitionedCallџ
flatten_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_369356382
flatten_1/PartitionedCallљ
flatten/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_369356462
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_36935660dense_36935662*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_369356592
dense/StatefulPartitionedCallВ
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_36935677dense_1_36935679*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_369356762!
dense_1/StatefulPartitionedCallД
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_36935694dense_2_36935696*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_369356932!
dense_2/StatefulPartitionedCallо
concatenate_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0(dense_1/StatefulPartitionedCall:output:0(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_369357072
concatenate_2/PartitionedCallл
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0encoder_output_36935720encoder_output_36935722*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_encoder_output_layer_call_and_return_conditional_losses_369357192(
&encoder_output/StatefulPartitionedCallщ
decoder/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_36935725decoder_36935727decoder_36935729decoder_36935731decoder_36935733decoder_36935735decoder_36935737decoder_36935739decoder_36935741decoder_36935743decoder_36935745decoder_36935747decoder_36935749decoder_36935751*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_decoder_layer_call_and_return_conditional_losses_369351482!
decoder/StatefulPartitionedCall
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity(decoder/StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^decoder/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:WS
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:WS
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ё
N
2__inference_max_pooling2d_1_layer_call_fn_36936988

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_369355902
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ
i
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_36936993

inputs
identityЌ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Г
џ
-__inference_PASTA_CTAE_layer_call_fn_36936616
inputs_0
inputs_1
inputs_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:	
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:0

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:0

unknown_24:0

unknown_25:d

unknown_26:d

unknown_27:

unknown_28:
identity

identity_1

identity_2ЂStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*@
_read_only_resource_inputs"
 	
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_369360952
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
inputs/1:YU
/
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2
M

H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936095

inputs
inputs_1
inputs_2+
conv2d_2_36936016:
conv2d_2_36936018:)
conv2d_36936021:
conv2d_36936023:+
conv2d_3_36936028:
conv2d_3_36936030:+
conv2d_1_36936033:	
conv2d_1_36936035: 
dense_36936040:
dense_36936042:"
dense_1_36936045:
dense_1_36936047:"
dense_2_36936050:
dense_2_36936052:)
encoder_output_36936056:0%
encoder_output_36936058:"
decoder_36936061:
decoder_36936063:"
decoder_36936065:
decoder_36936067:"
decoder_36936069:
decoder_36936071:"
decoder_36936073:
decoder_36936075:"
decoder_36936077:0
decoder_36936079:0"
decoder_36936081:d
decoder_36936083:d"
decoder_36936085:
decoder_36936087:
identity

identity_1

identity_2Ђconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂdecoder/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂ&encoder_output/StatefulPartitionedCallЇ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputs_2conv2d_2_36936016conv2d_2_36936018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_369355632"
 conv2d_2/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputs_1conv2d_36936021conv2d_36936023*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_369355802 
conv2d/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_369355902!
max_pooling2d_1/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_369355962
max_pooling2d/PartitionedCallЧ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_3_36936028conv2d_3_36936030*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_369356092"
 conv2d_3/StatefulPartitionedCallХ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_36936033conv2d_1_36936035*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_369356262"
 conv2d_1/StatefulPartitionedCallџ
flatten_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_369356382
flatten_1/PartitionedCallљ
flatten/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_369356462
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_36936040dense_36936042*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_369356592
dense/StatefulPartitionedCallВ
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_36936045dense_1_36936047*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_369356762!
dense_1/StatefulPartitionedCallД
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_36936050dense_2_36936052*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_369356932!
dense_2/StatefulPartitionedCallо
concatenate_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0(dense_1/StatefulPartitionedCall:output:0(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_369357072
concatenate_2/PartitionedCallл
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0encoder_output_36936056encoder_output_36936058*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_encoder_output_layer_call_and_return_conditional_losses_369357192(
&encoder_output/StatefulPartitionedCallщ
decoder/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0decoder_36936061decoder_36936063decoder_36936065decoder_36936067decoder_36936069decoder_36936071decoder_36936073decoder_36936075decoder_36936077decoder_36936079decoder_36936081decoder_36936083decoder_36936085decoder_36936087*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_decoder_layer_call_and_return_conditional_losses_369353752!
decoder/StatefulPartitionedCall
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity(decoder/StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity(decoder/StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^decoder/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:WS
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:WS
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

і
E__inference_dense_1_layer_call_and_return_conditional_losses_36937100

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
э
L
0__inference_max_pooling2d_layer_call_fn_36936968

inputs
identityд
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_369355962
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ	:W S
/
_output_shapes
:џџџџџџџџџ	
 
_user_specified_nameinputs
І
ў
*__inference_decoder_layer_call_fn_36937228

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:0
	unknown_8:0
	unknown_9:d

unknown_10:d

unknown_11:

unknown_12:
identity

identity_1

identity_2ЂStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_decoder_layer_call_and_return_conditional_losses_369353752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

і
E__inference_dense_2_layer_call_and_return_conditional_losses_36935693

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ј

+__inference_dense_25_layer_call_fn_36937489

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_25_layer_call_and_return_conditional_losses_369350722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_reshape_12_layer_call_and_return_conditional_losses_36935092

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ0:O K
'
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
П
i
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_36935590

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

є
C__inference_dense_layer_call_and_return_conditional_losses_36937080

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
б
j
0__inference_concatenate_2_layer_call_fn_36937127
inputs_0
inputs_1
inputs_2
identityф
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_369357072
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2
С
F
*__inference_softmax_layer_call_fn_36937600

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_softmax_layer_call_and_return_conditional_losses_369351432
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_36936973

inputs
identityЌ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ї
F__inference_dense_25_layer_call_and_return_conditional_losses_36937500

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ї
F__inference_dense_28_layer_call_and_return_conditional_losses_36937480

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
з
I
-__inference_reshape_11_layer_call_fn_36937562

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_11_layer_call_and_return_conditional_losses_369351082
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
э
џ
F__inference_conv2d_3_layer_call_and_return_conditional_losses_36937038

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

c
G__inference_softmax_1_layer_call_and_return_conditional_losses_36937615

inputs
identity_
SoftmaxSoftmaxinputs*
T0*/
_output_shapes
:џџџџџџџџџ
2	
Softmaxm
IdentityIdentitySoftmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
:W S
/
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
е
H
,__inference_flatten_1_layer_call_fn_36937054

inputs
identityШ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_369356382
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Г
џ
-__inference_PASTA_CTAE_layer_call_fn_36936545
inputs_0
inputs_1
inputs_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:	
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:0

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:0

unknown_24:0

unknown_25:d

unknown_26:d

unknown_27:

unknown_28:
identity

identity_1

identity_2ЂStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ*@
_read_only_resource_inputs"
 	
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_369357592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ
:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
inputs/1:YU
/
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2
ј

+__inference_dense_24_layer_call_fn_36937429

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_24_layer_call_and_return_conditional_losses_369350212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Т
serving_defaultЎ
;
input_10
serving_default_input_1:0џџџџџџџџџ
C
input_28
serving_default_input_2:0џџџџџџџџџ

C
input_38
serving_default_input_3:0џџџџџџџџџ;
decoder0
StatefulPartitionedCall:0џџџџџџџџџE
	decoder_18
StatefulPartitionedCall:1џџџџџџџџџ
E
	decoder_28
StatefulPartitionedCall:2џџџџџџџџџtensorflow/serving/predict:рЈ
Ѕ
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer_with_weights-8
layer-16
regularization_losses
trainable_variables
	variables
	keras_api

signatures
М__call__
Н_default_save_signature
+О&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
Н

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
П__call__
+Р&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

kernel
bias
regularization_losses
 trainable_variables
!	variables
"	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
#regularization_losses
$trainable_variables
%	variables
&	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
'regularization_losses
(trainable_variables
)	variables
*	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

+kernel
,bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

1kernel
2bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
Ї
7regularization_losses
8trainable_variables
9	variables
:	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
;regularization_losses
<trainable_variables
=	variables
>	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

?kernel
@bias
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Ekernel
Fbias
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Kkernel
Lbias
Mregularization_losses
Ntrainable_variables
O	variables
P	keras_api
г__call__
+д&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
Qregularization_losses
Rtrainable_variables
S	variables
T	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Ukernel
Vbias
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
з__call__
+и&call_and_return_all_conditional_losses"
_tf_keras_layer

[layer-0
\layer_with_weights-0
\layer-1
]layer_with_weights-1
]layer-2
^layer_with_weights-2
^layer-3
_layer_with_weights-3
_layer-4
`layer_with_weights-4
`layer-5
alayer_with_weights-5
alayer-6
blayer_with_weights-6
blayer-7
clayer-8
dlayer-9
elayer-10
flayer-11
glayer-12
hlayer-13
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_network
 "
trackable_list_wrapper

0
1
2
3
+4
,5
16
27
?8
@9
E10
F11
K12
L13
U14
V15
m16
n17
o18
p19
q20
r21
s22
t23
u24
v25
w26
x27
y28
z29"
trackable_list_wrapper

0
1
2
3
+4
,5
16
27
?8
@9
E10
F11
K12
L13
U14
V15
m16
n17
o18
p19
q20
r21
s22
t23
u24
v25
w26
x27
y28
z29"
trackable_list_wrapper
Ю

{layers
regularization_losses
trainable_variables
|metrics
}non_trainable_variables
~layer_metrics
	variables
layer_regularization_losses
М__call__
Н_default_save_signature
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
-
лserving_default"
signature_map
':%2conv2d/kernel
:2conv2d/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Е
layers
regularization_losses
trainable_variables
metrics
non_trainable_variables
layer_metrics
	variables
 layer_regularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
):'2conv2d_2/kernel
:2conv2d_2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Е
layers
regularization_losses
 trainable_variables
metrics
non_trainable_variables
layer_metrics
!	variables
 layer_regularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
layers
#regularization_losses
$trainable_variables
metrics
non_trainable_variables
layer_metrics
%	variables
 layer_regularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
layers
'regularization_losses
(trainable_variables
metrics
non_trainable_variables
layer_metrics
)	variables
 layer_regularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
):'	2conv2d_1/kernel
:2conv2d_1/bias
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
Е
layers
-regularization_losses
.trainable_variables
metrics
non_trainable_variables
layer_metrics
/	variables
 layer_regularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
):'2conv2d_3/kernel
:2conv2d_3/bias
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
Е
layers
3regularization_losses
4trainable_variables
metrics
non_trainable_variables
layer_metrics
5	variables
 layer_regularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
layers
7regularization_losses
8trainable_variables
metrics
 non_trainable_variables
Ёlayer_metrics
9	variables
 Ђlayer_regularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Ѓlayers
;regularization_losses
<trainable_variables
Єmetrics
Ѕnon_trainable_variables
Іlayer_metrics
=	variables
 Їlayer_regularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
:2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
Е
Јlayers
Aregularization_losses
Btrainable_variables
Љmetrics
Њnon_trainable_variables
Ћlayer_metrics
C	variables
 Ќlayer_regularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
 :2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
Е
­layers
Gregularization_losses
Htrainable_variables
Ўmetrics
Џnon_trainable_variables
Аlayer_metrics
I	variables
 Бlayer_regularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
 :2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
Е
Вlayers
Mregularization_losses
Ntrainable_variables
Гmetrics
Дnon_trainable_variables
Еlayer_metrics
O	variables
 Жlayer_regularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Зlayers
Qregularization_losses
Rtrainable_variables
Иmetrics
Йnon_trainable_variables
Кlayer_metrics
S	variables
 Лlayer_regularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
':%02encoder_output/kernel
!:2encoder_output/bias
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
Е
Мlayers
Wregularization_losses
Xtrainable_variables
Нmetrics
Оnon_trainable_variables
Пlayer_metrics
Y	variables
 Рlayer_regularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
7
С_init_input_shape"
_tf_keras_input_layer
С

mkernel
nbias
Тregularization_losses
Уtrainable_variables
Ф	variables
Х	keras_api
м__call__
+н&call_and_return_all_conditional_losses"
_tf_keras_layer
С

okernel
pbias
Цregularization_losses
Чtrainable_variables
Ш	variables
Щ	keras_api
о__call__
+п&call_and_return_all_conditional_losses"
_tf_keras_layer
С

qkernel
rbias
Ъregularization_losses
Ыtrainable_variables
Ь	variables
Э	keras_api
р__call__
+с&call_and_return_all_conditional_losses"
_tf_keras_layer
С

skernel
tbias
Юregularization_losses
Яtrainable_variables
а	variables
б	keras_api
т__call__
+у&call_and_return_all_conditional_losses"
_tf_keras_layer
С

ukernel
vbias
вregularization_losses
гtrainable_variables
д	variables
е	keras_api
ф__call__
+х&call_and_return_all_conditional_losses"
_tf_keras_layer
С

wkernel
xbias
жregularization_losses
зtrainable_variables
и	variables
й	keras_api
ц__call__
+ч&call_and_return_all_conditional_losses"
_tf_keras_layer
С

ykernel
zbias
кregularization_losses
лtrainable_variables
м	variables
н	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
оregularization_losses
пtrainable_variables
р	variables
с	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
тregularization_losses
уtrainable_variables
ф	variables
х	keras_api
ь__call__
+э&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
цregularization_losses
чtrainable_variables
ш	variables
щ	keras_api
ю__call__
+я&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
ъregularization_losses
ыtrainable_variables
ь	variables
э	keras_api
№__call__
+ё&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
юregularization_losses
яtrainable_variables
№	variables
ё	keras_api
ђ__call__
+ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
ђregularization_losses
ѓtrainable_variables
є	variables
ѕ	keras_api
є__call__
+ѕ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper

m0
n1
o2
p3
q4
r5
s6
t7
u8
v9
w10
x11
y12
z13"
trackable_list_wrapper

m0
n1
o2
p3
q4
r5
s6
t7
u8
v9
w10
x11
y12
z13"
trackable_list_wrapper
Е
іlayers
iregularization_losses
jtrainable_variables
їmetrics
јnon_trainable_variables
љlayer_metrics
k	variables
 њlayer_regularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
!:2dense_23/kernel
:2dense_23/bias
!:2dense_24/kernel
:2dense_24/bias
!:2dense_26/kernel
:2dense_26/bias
!:2dense_28/kernel
:2dense_28/bias
!:2dense_25/kernel
:2dense_25/bias
!:d2dense_27/kernel
:d2dense_27/bias
!:02dense_29/kernel
:02dense_29/bias

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
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
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
И
ћlayers
Тregularization_losses
Уtrainable_variables
ќmetrics
§non_trainable_variables
ўlayer_metrics
Ф	variables
 џlayer_regularization_losses
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
И
layers
Цregularization_losses
Чtrainable_variables
metrics
non_trainable_variables
layer_metrics
Ш	variables
 layer_regularization_losses
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
И
layers
Ъregularization_losses
Ыtrainable_variables
metrics
non_trainable_variables
layer_metrics
Ь	variables
 layer_regularization_losses
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
И
layers
Юregularization_losses
Яtrainable_variables
metrics
non_trainable_variables
layer_metrics
а	variables
 layer_regularization_losses
т__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
И
layers
вregularization_losses
гtrainable_variables
metrics
non_trainable_variables
layer_metrics
д	variables
 layer_regularization_losses
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
И
layers
жregularization_losses
зtrainable_variables
metrics
non_trainable_variables
layer_metrics
и	variables
 layer_regularization_losses
ц__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
И
layers
кregularization_losses
лtrainable_variables
metrics
non_trainable_variables
layer_metrics
м	variables
 layer_regularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
layers
оregularization_losses
пtrainable_variables
metrics
 non_trainable_variables
Ёlayer_metrics
р	variables
 Ђlayer_regularization_losses
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ѓlayers
тregularization_losses
уtrainable_variables
Єmetrics
Ѕnon_trainable_variables
Іlayer_metrics
ф	variables
 Їlayer_regularization_losses
ь__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Јlayers
цregularization_losses
чtrainable_variables
Љmetrics
Њnon_trainable_variables
Ћlayer_metrics
ш	variables
 Ќlayer_regularization_losses
ю__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
­layers
ъregularization_losses
ыtrainable_variables
Ўmetrics
Џnon_trainable_variables
Аlayer_metrics
ь	variables
 Бlayer_regularization_losses
№__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Вlayers
юregularization_losses
яtrainable_variables
Гmetrics
Дnon_trainable_variables
Еlayer_metrics
№	variables
 Жlayer_regularization_losses
ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Зlayers
ђregularization_losses
ѓtrainable_variables
Иmetrics
Йnon_trainable_variables
Кlayer_metrics
є	variables
 Лlayer_regularization_losses
є__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object

[0
\1
]2
^3
_4
`5
a6
b7
c8
d9
e10
f11
g12
h13"
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
2џ
-__inference_PASTA_CTAE_layer_call_fn_36935826
-__inference_PASTA_CTAE_layer_call_fn_36936545
-__inference_PASTA_CTAE_layer_call_fn_36936616
-__inference_PASTA_CTAE_layer_call_fn_36936233Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
рBн
#__inference__wrapped_model_36934908input_1input_2input_3"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936767
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936918
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936317
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936401Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
г2а
)__inference_conv2d_layer_call_fn_36936927Ђ
В
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
annotationsЊ *
 
ю2ы
D__inference_conv2d_layer_call_and_return_conditional_losses_36936938Ђ
В
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
annotationsЊ *
 
е2в
+__inference_conv2d_2_layer_call_fn_36936947Ђ
В
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
annotationsЊ *
 
№2э
F__inference_conv2d_2_layer_call_and_return_conditional_losses_36936958Ђ
В
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
annotationsЊ *
 
2
0__inference_max_pooling2d_layer_call_fn_36936963
0__inference_max_pooling2d_layer_call_fn_36936968Ђ
В
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
annotationsЊ *
 
Т2П
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_36936973
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_36936978Ђ
В
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
annotationsЊ *
 
2
2__inference_max_pooling2d_1_layer_call_fn_36936983
2__inference_max_pooling2d_1_layer_call_fn_36936988Ђ
В
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
annotationsЊ *
 
Ц2У
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_36936993
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_36936998Ђ
В
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
annotationsЊ *
 
е2в
+__inference_conv2d_1_layer_call_fn_36937007Ђ
В
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
annotationsЊ *
 
№2э
F__inference_conv2d_1_layer_call_and_return_conditional_losses_36937018Ђ
В
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
annotationsЊ *
 
е2в
+__inference_conv2d_3_layer_call_fn_36937027Ђ
В
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
annotationsЊ *
 
№2э
F__inference_conv2d_3_layer_call_and_return_conditional_losses_36937038Ђ
В
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
annotationsЊ *
 
д2б
*__inference_flatten_layer_call_fn_36937043Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_flatten_layer_call_and_return_conditional_losses_36937049Ђ
В
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
annotationsЊ *
 
ж2г
,__inference_flatten_1_layer_call_fn_36937054Ђ
В
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
annotationsЊ *
 
ё2ю
G__inference_flatten_1_layer_call_and_return_conditional_losses_36937060Ђ
В
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
annotationsЊ *
 
в2Я
(__inference_dense_layer_call_fn_36937069Ђ
В
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
annotationsЊ *
 
э2ъ
C__inference_dense_layer_call_and_return_conditional_losses_36937080Ђ
В
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
annotationsЊ *
 
д2б
*__inference_dense_1_layer_call_fn_36937089Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_dense_1_layer_call_and_return_conditional_losses_36937100Ђ
В
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
annotationsЊ *
 
д2б
*__inference_dense_2_layer_call_fn_36937109Ђ
В
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
annotationsЊ *
 
я2ь
E__inference_dense_2_layer_call_and_return_conditional_losses_36937120Ђ
В
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
annotationsЊ *
 
к2з
0__inference_concatenate_2_layer_call_fn_36937127Ђ
В
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
annotationsЊ *
 
ѕ2ђ
K__inference_concatenate_2_layer_call_and_return_conditional_losses_36937135Ђ
В
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
annotationsЊ *
 
л2и
1__inference_encoder_output_layer_call_fn_36937144Ђ
В
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
annotationsЊ *
 
і2ѓ
L__inference_encoder_output_layer_call_and_return_conditional_losses_36937154Ђ
В
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
annotationsЊ *
 
і2ѓ
*__inference_decoder_layer_call_fn_36935183
*__inference_decoder_layer_call_fn_36937191
*__inference_decoder_layer_call_fn_36937228
*__inference_decoder_layer_call_fn_36935447Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
т2п
E__inference_decoder_layer_call_and_return_conditional_losses_36937314
E__inference_decoder_layer_call_and_return_conditional_losses_36937400
E__inference_decoder_layer_call_and_return_conditional_losses_36935494
E__inference_decoder_layer_call_and_return_conditional_losses_36935541Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
нBк
&__inference_signature_wrapper_36936474input_1input_2input_3"
В
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
annotationsЊ *
 
е2в
+__inference_dense_23_layer_call_fn_36937409Ђ
В
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
annotationsЊ *
 
№2э
F__inference_dense_23_layer_call_and_return_conditional_losses_36937420Ђ
В
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
annotationsЊ *
 
е2в
+__inference_dense_24_layer_call_fn_36937429Ђ
В
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
annotationsЊ *
 
№2э
F__inference_dense_24_layer_call_and_return_conditional_losses_36937440Ђ
В
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
annotationsЊ *
 
е2в
+__inference_dense_26_layer_call_fn_36937449Ђ
В
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
annotationsЊ *
 
№2э
F__inference_dense_26_layer_call_and_return_conditional_losses_36937460Ђ
В
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
annotationsЊ *
 
е2в
+__inference_dense_28_layer_call_fn_36937469Ђ
В
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
annotationsЊ *
 
№2э
F__inference_dense_28_layer_call_and_return_conditional_losses_36937480Ђ
В
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
annotationsЊ *
 
е2в
+__inference_dense_25_layer_call_fn_36937489Ђ
В
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
annotationsЊ *
 
№2э
F__inference_dense_25_layer_call_and_return_conditional_losses_36937500Ђ
В
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
annotationsЊ *
 
е2в
+__inference_dense_27_layer_call_fn_36937509Ђ
В
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
annotationsЊ *
 
№2э
F__inference_dense_27_layer_call_and_return_conditional_losses_36937520Ђ
В
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
annotationsЊ *
 
е2в
+__inference_dense_29_layer_call_fn_36937529Ђ
В
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
annotationsЊ *
 
№2э
F__inference_dense_29_layer_call_and_return_conditional_losses_36937540Ђ
В
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
annotationsЊ *
 
з2д
-__inference_reshape_10_layer_call_fn_36937545Ђ
В
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
annotationsЊ *
 
ђ2я
H__inference_reshape_10_layer_call_and_return_conditional_losses_36937557Ђ
В
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
annotationsЊ *
 
з2д
-__inference_reshape_11_layer_call_fn_36937562Ђ
В
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
annotationsЊ *
 
ђ2я
H__inference_reshape_11_layer_call_and_return_conditional_losses_36937576Ђ
В
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
annotationsЊ *
 
з2д
-__inference_reshape_12_layer_call_fn_36937581Ђ
В
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
annotationsЊ *
 
ђ2я
H__inference_reshape_12_layer_call_and_return_conditional_losses_36937595Ђ
В
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
annotationsЊ *
 
с2о
*__inference_softmax_layer_call_fn_36937600Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќ2љ
E__inference_softmax_layer_call_and_return_conditional_losses_36937605Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
у2р
,__inference_softmax_1_layer_call_fn_36937610Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ў2ћ
G__inference_softmax_1_layer_call_and_return_conditional_losses_36937615Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
у2р
,__inference_softmax_2_layer_call_fn_36937620Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ў2ћ
G__inference_softmax_2_layer_call_and_return_conditional_losses_36937625Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936317Е12+,?@EFKLUVmnstqropyzwxuvЂ
Ђ
|y
!
input_1џџџџџџџџџ
)&
input_2џџџџџџџџџ

)&
input_3џџџџџџџџџ
p 

 
Њ "zЂw
pm

0/0џџџџџџџџџ
%"
0/1џџџџџџџџџ

%"
0/2џџџџџџџџџ
 
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936401Е12+,?@EFKLUVmnstqropyzwxuvЂ
Ђ
|y
!
input_1џџџџџџџџџ
)&
input_2џџџџџџџџџ

)&
input_3џџџџџџџџџ
p

 
Њ "zЂw
pm

0/0џџџџџџџџџ
%"
0/1џџџџџџџџџ

%"
0/2џџџџџџџџџ
 
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936767И12+,?@EFKLUVmnstqropyzwxuvЂ
Ђ
|
"
inputs/0џџџџџџџџџ
*'
inputs/1џџџџџџџџџ

*'
inputs/2џџџџџџџџџ
p 

 
Њ "zЂw
pm

0/0џџџџџџџџџ
%"
0/1џџџџџџџџџ

%"
0/2џџџџџџџџџ
 
H__inference_PASTA_CTAE_layer_call_and_return_conditional_losses_36936918И12+,?@EFKLUVmnstqropyzwxuvЂ
Ђ
|
"
inputs/0џџџџџџџџџ
*'
inputs/1џџџџџџџџџ

*'
inputs/2џџџџџџџџџ
p

 
Њ "zЂw
pm

0/0џџџџџџџџџ
%"
0/1џџџџџџџџџ

%"
0/2џџџџџџџџџ
 з
-__inference_PASTA_CTAE_layer_call_fn_36935826Ѕ12+,?@EFKLUVmnstqropyzwxuvЂ
Ђ
|y
!
input_1џџџџџџџџџ
)&
input_2џџџџџџџџџ

)&
input_3џџџџџџџџџ
p 

 
Њ "jg

0џџџџџџџџџ
# 
1џџџџџџџџџ

# 
2џџџџџџџџџз
-__inference_PASTA_CTAE_layer_call_fn_36936233Ѕ12+,?@EFKLUVmnstqropyzwxuvЂ
Ђ
|y
!
input_1џџџџџџџџџ
)&
input_2џџџџџџџџџ

)&
input_3џџџџџџџџџ
p

 
Њ "jg

0џџџџџџџџџ
# 
1џџџџџџџџџ

# 
2џџџџџџџџџк
-__inference_PASTA_CTAE_layer_call_fn_36936545Ј12+,?@EFKLUVmnstqropyzwxuvЂ
Ђ
|
"
inputs/0џџџџџџџџџ
*'
inputs/1џџџџџџџџџ

*'
inputs/2џџџџџџџџџ
p 

 
Њ "jg

0џџџџџџџџџ
# 
1џџџџџџџџџ

# 
2џџџџџџџџџк
-__inference_PASTA_CTAE_layer_call_fn_36936616Ј12+,?@EFKLUVmnstqropyzwxuvЂ
Ђ
|
"
inputs/0џџџџџџџџџ
*'
inputs/1џџџџџџџџџ

*'
inputs/2џџџџџџџџџ
p

 
Њ "jg

0џџџџџџџџџ
# 
1џџџџџџџџџ

# 
2џџџџџџџџџ
#__inference__wrapped_model_36934908й12+,?@EFKLUVmnstqropyzwxuvЂ
Ђ~
|y
!
input_1џџџџџџџџџ
)&
input_2џџџџџџџџџ

)&
input_3џџџџџџџџџ
Њ "ІЊЂ
,
decoder!
decoderџџџџџџџџџ
8
	decoder_1+(
	decoder_1џџџџџџџџџ

8
	decoder_2+(
	decoder_2џџџџџџџџџї
K__inference_concatenate_2_layer_call_and_return_conditional_losses_36937135Ї~Ђ{
tЂq
ol
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ0
 Я
0__inference_concatenate_2_layer_call_fn_36937127~Ђ{
tЂq
ol
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
Њ "џџџџџџџџџ0Ж
F__inference_conv2d_1_layer_call_and_return_conditional_losses_36937018l+,7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ	
Њ "-Ђ*
# 
0џџџџџџџџџ
 
+__inference_conv2d_1_layer_call_fn_36937007_+,7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ	
Њ " џџџџџџџџџЖ
F__inference_conv2d_2_layer_call_and_return_conditional_losses_36936958l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ
 
+__inference_conv2d_2_layer_call_fn_36936947_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ " џџџџџџџџџЖ
F__inference_conv2d_3_layer_call_and_return_conditional_losses_36937038l127Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ
 
+__inference_conv2d_3_layer_call_fn_36937027_127Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ " џџџџџџџџџД
D__inference_conv2d_layer_call_and_return_conditional_losses_36936938l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ

Њ "-Ђ*
# 
0џџџџџџџџџ	
 
)__inference_conv2d_layer_call_fn_36936927_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ

Њ " џџџџџџџџџ	
E__inference_decoder_layer_call_and_return_conditional_losses_36935494Цmnstqropyzwxuv8Ђ5
.Ђ+
!
input_6џџџџџџџџџ
p 

 
Њ "zЂw
pm

0/0џџџџџџџџџ
%"
0/1џџџџџџџџџ

%"
0/2џџџџџџџџџ
 
E__inference_decoder_layer_call_and_return_conditional_losses_36935541Цmnstqropyzwxuv8Ђ5
.Ђ+
!
input_6џџџџџџџџџ
p

 
Њ "zЂw
pm

0/0џџџџџџџџџ
%"
0/1џџџџџџџџџ

%"
0/2џџџџџџџџџ
 
E__inference_decoder_layer_call_and_return_conditional_losses_36937314Хmnstqropyzwxuv7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p 

 
Њ "zЂw
pm

0/0џџџџџџџџџ
%"
0/1џџџџџџџџџ

%"
0/2џџџџџџџџџ
 
E__inference_decoder_layer_call_and_return_conditional_losses_36937400Хmnstqropyzwxuv7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p

 
Њ "zЂw
pm

0/0џџџџџџџџџ
%"
0/1џџџџџџџџџ

%"
0/2џџџџџџџџџ
 х
*__inference_decoder_layer_call_fn_36935183Жmnstqropyzwxuv8Ђ5
.Ђ+
!
input_6џџџџџџџџџ
p 

 
Њ "jg

0џџџџџџџџџ
# 
1џџџџџџџџџ

# 
2џџџџџџџџџх
*__inference_decoder_layer_call_fn_36935447Жmnstqropyzwxuv8Ђ5
.Ђ+
!
input_6џџџџџџџџџ
p

 
Њ "jg

0џџџџџџџџџ
# 
1џџџџџџџџџ

# 
2џџџџџџџџџф
*__inference_decoder_layer_call_fn_36937191Еmnstqropyzwxuv7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p 

 
Њ "jg

0џџџџџџџџџ
# 
1џџџџџџџџџ

# 
2џџџџџџџџџф
*__inference_decoder_layer_call_fn_36937228Еmnstqropyzwxuv7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p

 
Њ "jg

0џџџџџџџџџ
# 
1џџџџџџџџџ

# 
2џџџџџџџџџЅ
E__inference_dense_1_layer_call_and_return_conditional_losses_36937100\EF/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dense_1_layer_call_fn_36937089OEF/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџІ
F__inference_dense_23_layer_call_and_return_conditional_losses_36937420\mn/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 ~
+__inference_dense_23_layer_call_fn_36937409Omn/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџІ
F__inference_dense_24_layer_call_and_return_conditional_losses_36937440\op/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 ~
+__inference_dense_24_layer_call_fn_36937429Oop/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџІ
F__inference_dense_25_layer_call_and_return_conditional_losses_36937500\uv/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 ~
+__inference_dense_25_layer_call_fn_36937489Ouv/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџІ
F__inference_dense_26_layer_call_and_return_conditional_losses_36937460\qr/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 ~
+__inference_dense_26_layer_call_fn_36937449Oqr/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџІ
F__inference_dense_27_layer_call_and_return_conditional_losses_36937520\wx/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџd
 ~
+__inference_dense_27_layer_call_fn_36937509Owx/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџdІ
F__inference_dense_28_layer_call_and_return_conditional_losses_36937480\st/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 ~
+__inference_dense_28_layer_call_fn_36937469Ost/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџІ
F__inference_dense_29_layer_call_and_return_conditional_losses_36937540\yz/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ0
 ~
+__inference_dense_29_layer_call_fn_36937529Oyz/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ0Ѕ
E__inference_dense_2_layer_call_and_return_conditional_losses_36937120\KL/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dense_2_layer_call_fn_36937109OKL/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЃ
C__inference_dense_layer_call_and_return_conditional_losses_36937080\?@/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 {
(__inference_dense_layer_call_fn_36937069O?@/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЌ
L__inference_encoder_output_layer_call_and_return_conditional_losses_36937154\UV/Ђ,
%Ђ"
 
inputsџџџџџџџџџ0
Њ "%Ђ"

0џџџџџџџџџ
 
1__inference_encoder_output_layer_call_fn_36937144OUV/Ђ,
%Ђ"
 
inputsџџџџџџџџџ0
Њ "џџџџџџџџџЋ
G__inference_flatten_1_layer_call_and_return_conditional_losses_36937060`7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
,__inference_flatten_1_layer_call_fn_36937054S7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "џџџџџџџџџЉ
E__inference_flatten_layer_call_and_return_conditional_losses_36937049`7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
*__inference_flatten_layer_call_fn_36937043S7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "џџџџџџџџџ№
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_36936993RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Й
M__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_36936998h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ
 Ш
2__inference_max_pooling2d_1_layer_call_fn_36936983RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2__inference_max_pooling2d_1_layer_call_fn_36936988[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ " џџџџџџџџџю
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_36936973RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 З
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_36936978h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ	
Њ "-Ђ*
# 
0џџџџџџџџџ	
 Ц
0__inference_max_pooling2d_layer_call_fn_36936963RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
0__inference_max_pooling2d_layer_call_fn_36936968[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ	
Њ " џџџџџџџџџ	Є
H__inference_reshape_10_layer_call_and_return_conditional_losses_36937557X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 |
-__inference_reshape_10_layer_call_fn_36937545K/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЌ
H__inference_reshape_11_layer_call_and_return_conditional_losses_36937576`/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "-Ђ*
# 
0џџџџџџџџџ

 
-__inference_reshape_11_layer_call_fn_36937562S/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ " џџџџџџџџџ
Ќ
H__inference_reshape_12_layer_call_and_return_conditional_losses_36937595`/Ђ,
%Ђ"
 
inputsџџџџџџџџџ0
Њ "-Ђ*
# 
0џџџџџџџџџ
 
-__inference_reshape_12_layer_call_fn_36937581S/Ђ,
%Ђ"
 
inputsџџџџџџџџџ0
Њ " џџџџџџџџџЁ
&__inference_signature_wrapper_36936474і12+,?@EFKLUVmnstqropyzwxuvЊЂІ
Ђ 
Њ
,
input_1!
input_1џџџџџџџџџ
4
input_2)&
input_2џџџџџџџџџ

4
input_3)&
input_3џџџџџџџџџ"ІЊЂ
,
decoder!
decoderџџџџџџџџџ
8
	decoder_1+(
	decoder_1џџџџџџџџџ

8
	decoder_2+(
	decoder_2џџџџџџџџџЗ
G__inference_softmax_1_layer_call_and_return_conditional_losses_36937615l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ


 
Њ "-Ђ*
# 
0џџџџџџџџџ

 
,__inference_softmax_1_layer_call_fn_36937610_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ


 
Њ " џџџџџџџџџ
З
G__inference_softmax_2_layer_call_and_return_conditional_losses_36937625l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 
,__inference_softmax_2_layer_call_fn_36937620_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ

 
Њ " џџџџџџџџџЅ
E__inference_softmax_layer_call_and_return_conditional_losses_36937605\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ

 
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_softmax_layer_call_fn_36937600O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ

 
Њ "џџџџџџџџџ