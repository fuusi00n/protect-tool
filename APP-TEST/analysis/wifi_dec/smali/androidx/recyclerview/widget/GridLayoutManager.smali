.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public E:Z

.field public F:I

.field public G:[I

.field public H:[Landroid/view/View;

.field public final I:Landroid/util/SparseIntArray;

.field public final J:Landroid/util/SparseIntArray;

.field public final K:Ls4;

.field public final L:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 55
    new-instance v0, Ls4;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ls4;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->l1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 9
    .line 10
    new-instance v0, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    new-instance v0, Landroid/util/SparseIntArray;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 23
    .line 24
    new-instance v0, Ls4;

    .line 25
    .line 26
    const/16 v1, 0xc

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ls4;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-static {p1, p2, p3, p4}, Lww;->I(Landroid/content/Context;Landroid/util/AttributeSet;II)Lvw;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget p1, p1, Lvw;->b:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->l1(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final B0(Lhx;Lgo;Lcl;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 6
    .line 7
    if-ge v2, v3, :cond_0

    .line 8
    .line 9
    iget v3, p2, Lgo;->d:I

    .line 10
    .line 11
    if-ltz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lhx;->b()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    iget v3, p2, Lgo;->d:I

    .line 22
    .line 23
    iget v4, p2, Lgo;->g:I

    .line 24
    .line 25
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {p3, v3, v4}, Lcl;->a(II)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    iget v3, p2, Lgo;->d:I

    .line 40
    .line 41
    iget v4, p2, Lgo;->e:I

    .line 42
    .line 43
    add-int/2addr v3, v4

    .line 44
    iput v3, p2, Lgo;->d:I

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public final J(Lcx;Lhx;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lhx;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    invoke-virtual {p2}, Lhx;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->h1(ILcx;Lhx;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    add-int/2addr p0, v1

    .line 27
    return p0
.end method

.method public final N0(Lcx;Lhx;III)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 5
    .line 6
    invoke-virtual {v0}, Lqt;->j()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 11
    .line 12
    invoke-virtual {v1}, Lqt;->g()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-le p4, p3, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, -0x1

    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    move-object v4, v3

    .line 23
    :goto_1
    if-eq p3, p4, :cond_6

    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lww;->u(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v5}, Lww;->H(Landroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ltz v6, :cond_5

    .line 34
    .line 35
    if-ge v6, p5, :cond_5

    .line 36
    .line 37
    invoke-virtual {p0, v6, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->i1(ILcx;Lhx;)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lxw;

    .line 49
    .line 50
    iget-object v6, v6, Lxw;->a:Lkx;

    .line 51
    .line 52
    invoke-virtual {v6}, Lkx;->h()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    if-nez v4, :cond_5

    .line 59
    .line 60
    move-object v4, v5

    .line 61
    goto :goto_3

    .line 62
    :cond_2
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 63
    .line 64
    invoke-virtual {v6, v5}, Lqt;->e(Landroid/view/View;)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-ge v6, v1, :cond_4

    .line 69
    .line 70
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Lqt;->b(Landroid/view/View;)I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-ge v6, v0, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    return-object v5

    .line 80
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 81
    .line 82
    move-object v3, v5

    .line 83
    :cond_5
    :goto_3
    add-int/2addr p3, v2

    .line 84
    goto :goto_1

    .line 85
    :cond_6
    if-eqz v3, :cond_7

    .line 86
    .line 87
    return-object v3

    .line 88
    :cond_7
    return-object v4
.end method

.method public final S(Landroid/view/View;ILcx;Lhx;)Landroid/view/View;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    move-object/from16 v5, p1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object/from16 v5, p1

    .line 16
    .line 17
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v6, v0, Lww;->a:Ly2;

    .line 25
    .line 26
    iget-object v6, v6, Ly2;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v6, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_2

    .line 35
    .line 36
    :goto_0
    move-object v3, v4

    .line 37
    :cond_2
    if-nez v3, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lil;

    .line 45
    .line 46
    iget v7, v6, Lil;->e:I

    .line 47
    .line 48
    iget v6, v6, Lil;->f:I

    .line 49
    .line 50
    add-int/2addr v6, v7

    .line 51
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->S(Landroid/view/View;ILcx;Lhx;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    :goto_1
    return-object v4

    .line 58
    :cond_4
    move/from16 v5, p2

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/4 v9, 0x1

    .line 65
    if-ne v5, v9, :cond_5

    .line 66
    .line 67
    move v5, v9

    .line 68
    goto :goto_2

    .line 69
    :cond_5
    const/4 v5, 0x0

    .line 70
    :goto_2
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 71
    .line 72
    const/4 v11, -0x1

    .line 73
    if-eq v5, v10, :cond_6

    .line 74
    .line 75
    invoke-virtual {v0}, Lww;->v()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    sub-int/2addr v5, v9

    .line 80
    move v10, v11

    .line 81
    move v12, v10

    .line 82
    goto :goto_3

    .line 83
    :cond_6
    invoke-virtual {v0}, Lww;->v()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    move v10, v5

    .line 88
    move v12, v9

    .line 89
    const/4 v5, 0x0

    .line 90
    :goto_3
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 91
    .line 92
    if-ne v13, v9, :cond_7

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Z

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    if-eqz v13, :cond_7

    .line 99
    .line 100
    move v13, v9

    .line 101
    goto :goto_4

    .line 102
    :cond_7
    const/4 v13, 0x0

    .line 103
    :goto_4
    invoke-virtual {v0, v5, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->h1(ILcx;Lhx;)I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    move-object/from16 v16, v4

    .line 108
    .line 109
    move v8, v11

    .line 110
    move v15, v8

    .line 111
    const/4 v9, 0x0

    .line 112
    move v11, v5

    .line 113
    const/4 v4, 0x0

    .line 114
    move-object/from16 v5, v16

    .line 115
    .line 116
    :goto_5
    move-object/from16 v17, v5

    .line 117
    .line 118
    if-eq v11, v10, :cond_18

    .line 119
    .line 120
    invoke-virtual {v0, v11, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->h1(ILcx;Lhx;)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-virtual {v0, v11}, Lww;->u(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-ne v1, v3, :cond_8

    .line 129
    .line 130
    goto/16 :goto_c

    .line 131
    .line 132
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 133
    .line 134
    .line 135
    move-result v18

    .line 136
    if-eqz v18, :cond_a

    .line 137
    .line 138
    if-eq v5, v14, :cond_a

    .line 139
    .line 140
    if-eqz v16, :cond_9

    .line 141
    .line 142
    goto/16 :goto_c

    .line 143
    .line 144
    :cond_9
    move-object/from16 v18, v3

    .line 145
    .line 146
    move/from16 v19, v9

    .line 147
    .line 148
    move/from16 v21, v10

    .line 149
    .line 150
    goto/16 :goto_a

    .line 151
    .line 152
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Lil;

    .line 157
    .line 158
    iget v2, v5, Lil;->e:I

    .line 159
    .line 160
    move-object/from16 v18, v3

    .line 161
    .line 162
    iget v3, v5, Lil;->f:I

    .line 163
    .line 164
    add-int/2addr v3, v2

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 166
    .line 167
    .line 168
    move-result v19

    .line 169
    if-eqz v19, :cond_b

    .line 170
    .line 171
    if-ne v2, v7, :cond_b

    .line 172
    .line 173
    if-ne v3, v6, :cond_b

    .line 174
    .line 175
    return-object v1

    .line 176
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 177
    .line 178
    .line 179
    move-result v19

    .line 180
    if-eqz v19, :cond_c

    .line 181
    .line 182
    if-eqz v16, :cond_d

    .line 183
    .line 184
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 185
    .line 186
    .line 187
    move-result v19

    .line 188
    if-nez v19, :cond_e

    .line 189
    .line 190
    if-nez v17, :cond_e

    .line 191
    .line 192
    :cond_d
    move/from16 v19, v9

    .line 193
    .line 194
    move/from16 v21, v10

    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_e
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 198
    .line 199
    .line 200
    move-result v19

    .line 201
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 202
    .line 203
    .line 204
    move-result v20

    .line 205
    move/from16 v21, v10

    .line 206
    .line 207
    sub-int v10, v20, v19

    .line 208
    .line 209
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 210
    .line 211
    .line 212
    move-result v19

    .line 213
    if-eqz v19, :cond_12

    .line 214
    .line 215
    if-le v10, v9, :cond_f

    .line 216
    .line 217
    :goto_6
    move/from16 v19, v9

    .line 218
    .line 219
    goto :goto_9

    .line 220
    :cond_f
    if-ne v10, v9, :cond_11

    .line 221
    .line 222
    if-le v2, v15, :cond_10

    .line 223
    .line 224
    const/4 v10, 0x1

    .line 225
    goto :goto_7

    .line 226
    :cond_10
    const/4 v10, 0x0

    .line 227
    :goto_7
    if-ne v13, v10, :cond_11

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_11
    move/from16 v19, v9

    .line 231
    .line 232
    goto :goto_a

    .line 233
    :cond_12
    if-nez v16, :cond_11

    .line 234
    .line 235
    move/from16 v19, v9

    .line 236
    .line 237
    iget-object v9, v0, Lww;->c:Ls4;

    .line 238
    .line 239
    invoke-virtual {v9, v1}, Ls4;->w(Landroid/view/View;)Z

    .line 240
    .line 241
    .line 242
    move-result v9

    .line 243
    if-eqz v9, :cond_13

    .line 244
    .line 245
    iget-object v9, v0, Lww;->d:Ls4;

    .line 246
    .line 247
    invoke-virtual {v9, v1}, Ls4;->w(Landroid/view/View;)Z

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-eqz v9, :cond_13

    .line 252
    .line 253
    goto :goto_a

    .line 254
    :cond_13
    if-le v10, v4, :cond_14

    .line 255
    .line 256
    goto :goto_9

    .line 257
    :cond_14
    if-ne v10, v4, :cond_17

    .line 258
    .line 259
    if-le v2, v8, :cond_15

    .line 260
    .line 261
    const/4 v9, 0x1

    .line 262
    goto :goto_8

    .line 263
    :cond_15
    const/4 v9, 0x0

    .line 264
    :goto_8
    if-ne v13, v9, :cond_17

    .line 265
    .line 266
    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    iget v5, v5, Lil;->e:I

    .line 271
    .line 272
    if-eqz v9, :cond_16

    .line 273
    .line 274
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    sub-int v9, v3, v2

    .line 283
    .line 284
    move-object/from16 v16, v1

    .line 285
    .line 286
    move v15, v5

    .line 287
    move-object/from16 v5, v17

    .line 288
    .line 289
    goto :goto_b

    .line 290
    :cond_16
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    sub-int v4, v3, v2

    .line 299
    .line 300
    move v8, v5

    .line 301
    move/from16 v9, v19

    .line 302
    .line 303
    move-object v5, v1

    .line 304
    goto :goto_b

    .line 305
    :cond_17
    :goto_a
    move-object/from16 v5, v17

    .line 306
    .line 307
    move/from16 v9, v19

    .line 308
    .line 309
    :goto_b
    add-int/2addr v11, v12

    .line 310
    move-object/from16 v1, p3

    .line 311
    .line 312
    move-object/from16 v2, p4

    .line 313
    .line 314
    move-object/from16 v3, v18

    .line 315
    .line 316
    move/from16 v10, v21

    .line 317
    .line 318
    goto/16 :goto_5

    .line 319
    .line 320
    :cond_18
    :goto_c
    if-eqz v16, :cond_19

    .line 321
    .line 322
    return-object v16

    .line 323
    :cond_19
    return-object v17
.end method

.method public final T0(Lcx;Lhx;Lgo;Lfo;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 12
    .line 13
    iget v6, v5, Lqt;->d:I

    .line 14
    .line 15
    packed-switch v6, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v5, v5, Lqt;->a:Lww;

    .line 19
    .line 20
    iget v5, v5, Lww;->l:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_0
    iget-object v5, v5, Lqt;->a:Lww;

    .line 24
    .line 25
    iget v5, v5, Lww;->m:I

    .line 26
    .line 27
    :goto_0
    const/4 v6, 0x1

    .line 28
    const/high16 v8, 0x40000000    # 2.0f

    .line 29
    .line 30
    if-eq v5, v8, :cond_0

    .line 31
    .line 32
    move v9, v6

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v9, 0x0

    .line 35
    :goto_1
    invoke-virtual {v0}, Lww;->v()I

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    if-lez v10, :cond_1

    .line 40
    .line 41
    iget-object v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 42
    .line 43
    iget v11, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 44
    .line 45
    aget v10, v10, v11

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const/4 v10, 0x0

    .line 49
    :goto_2
    if-eqz v9, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->m1()V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget v11, v3, Lgo;->e:I

    .line 55
    .line 56
    if-ne v11, v6, :cond_3

    .line 57
    .line 58
    move v11, v6

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const/4 v11, 0x0

    .line 61
    :goto_3
    iget v12, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 62
    .line 63
    if-nez v11, :cond_4

    .line 64
    .line 65
    iget v12, v3, Lgo;->d:I

    .line 66
    .line 67
    invoke-virtual {v0, v12, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->i1(ILcx;Lhx;)I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    iget v13, v3, Lgo;->d:I

    .line 72
    .line 73
    invoke-virtual {v0, v13, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->j1(ILcx;Lhx;)I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    add-int/2addr v12, v13

    .line 78
    :cond_4
    const/4 v13, 0x0

    .line 79
    :goto_4
    iget v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 80
    .line 81
    if-ge v13, v14, :cond_8

    .line 82
    .line 83
    iget v14, v3, Lgo;->d:I

    .line 84
    .line 85
    if-ltz v14, :cond_8

    .line 86
    .line 87
    invoke-virtual {v2}, Lhx;->b()I

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    if-ge v14, v15, :cond_8

    .line 92
    .line 93
    if-lez v12, :cond_8

    .line 94
    .line 95
    iget v14, v3, Lgo;->d:I

    .line 96
    .line 97
    invoke-virtual {v0, v14, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->j1(ILcx;Lhx;)I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 102
    .line 103
    if-gt v15, v8, :cond_7

    .line 104
    .line 105
    sub-int/2addr v12, v15

    .line 106
    if-gez v12, :cond_5

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_5
    invoke-virtual {v3, v1}, Lgo;->b(Lcx;)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    if-nez v8, :cond_6

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_6
    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 117
    .line 118
    aput-object v8, v14, v13

    .line 119
    .line 120
    add-int/lit8 v13, v13, 0x1

    .line 121
    .line 122
    const/high16 v8, 0x40000000    # 2.0f

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 128
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v3, "Item at position "

    .line 132
    .line 133
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v3, " requires "

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, " spans but GridLayoutManager has only "

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, " spans."

    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v1

    .line 168
    :cond_8
    :goto_5
    if-nez v13, :cond_9

    .line 169
    .line 170
    iput-boolean v6, v4, Lfo;->b:Z

    .line 171
    .line 172
    return-void

    .line 173
    :cond_9
    if-eqz v11, :cond_a

    .line 174
    .line 175
    move v15, v6

    .line 176
    move v14, v13

    .line 177
    const/4 v12, 0x0

    .line 178
    goto :goto_6

    .line 179
    :cond_a
    add-int/lit8 v12, v13, -0x1

    .line 180
    .line 181
    const/4 v14, -0x1

    .line 182
    const/4 v15, -0x1

    .line 183
    :goto_6
    const/4 v6, 0x0

    .line 184
    :goto_7
    if-eq v12, v14, :cond_b

    .line 185
    .line 186
    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 187
    .line 188
    aget-object v7, v7, v12

    .line 189
    .line 190
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 191
    .line 192
    .line 193
    move-result-object v16

    .line 194
    move-object/from16 v8, v16

    .line 195
    .line 196
    check-cast v8, Lil;

    .line 197
    .line 198
    invoke-static {v7}, Lww;->H(Landroid/view/View;)I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->j1(ILcx;Lhx;)I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    iput v7, v8, Lil;->f:I

    .line 207
    .line 208
    iput v6, v8, Lil;->e:I

    .line 209
    .line 210
    add-int/2addr v6, v7

    .line 211
    add-int/2addr v12, v15

    .line 212
    goto :goto_7

    .line 213
    :cond_b
    const/4 v1, 0x0

    .line 214
    const/4 v2, 0x0

    .line 215
    const/4 v6, 0x0

    .line 216
    :goto_8
    if-ge v2, v13, :cond_12

    .line 217
    .line 218
    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 219
    .line 220
    aget-object v7, v7, v2

    .line 221
    .line 222
    iget-object v8, v3, Lgo;->k:Ljava/util/List;

    .line 223
    .line 224
    if-nez v8, :cond_d

    .line 225
    .line 226
    if-eqz v11, :cond_c

    .line 227
    .line 228
    const/4 v8, -0x1

    .line 229
    const/4 v12, 0x0

    .line 230
    invoke-virtual {v0, v7, v8, v12}, Lww;->b(Landroid/view/View;IZ)V

    .line 231
    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_c
    const/4 v8, -0x1

    .line 235
    const/4 v12, 0x0

    .line 236
    invoke-virtual {v0, v7, v12, v12}, Lww;->b(Landroid/view/View;IZ)V

    .line 237
    .line 238
    .line 239
    goto :goto_9

    .line 240
    :cond_d
    const/4 v8, -0x1

    .line 241
    const/4 v12, 0x0

    .line 242
    if-eqz v11, :cond_e

    .line 243
    .line 244
    const/4 v14, 0x1

    .line 245
    invoke-virtual {v0, v7, v8, v14}, Lww;->b(Landroid/view/View;IZ)V

    .line 246
    .line 247
    .line 248
    goto :goto_9

    .line 249
    :cond_e
    const/4 v14, 0x1

    .line 250
    invoke-virtual {v0, v7, v12, v14}, Lww;->b(Landroid/view/View;IZ)V

    .line 251
    .line 252
    .line 253
    :goto_9
    iget-object v8, v0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    .line 255
    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 256
    .line 257
    if-nez v8, :cond_f

    .line 258
    .line 259
    invoke-virtual {v14, v12, v12, v12, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 260
    .line 261
    .line 262
    goto :goto_a

    .line 263
    :cond_f
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Landroid/graphics/Rect;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-virtual {v14, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 268
    .line 269
    .line 270
    :goto_a
    invoke-virtual {v0, v7, v5, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->k1(Landroid/view/View;IZ)V

    .line 271
    .line 272
    .line 273
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 274
    .line 275
    invoke-virtual {v8, v7}, Lqt;->c(Landroid/view/View;)I

    .line 276
    .line 277
    .line 278
    move-result v8

    .line 279
    if-le v8, v6, :cond_10

    .line 280
    .line 281
    move v6, v8

    .line 282
    :cond_10
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    check-cast v8, Lil;

    .line 287
    .line 288
    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 289
    .line 290
    invoke-virtual {v12, v7}, Lqt;->d(Landroid/view/View;)I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    int-to-float v7, v7

    .line 295
    const/high16 v12, 0x3f800000    # 1.0f

    .line 296
    .line 297
    mul-float/2addr v7, v12

    .line 298
    iget v8, v8, Lil;->f:I

    .line 299
    .line 300
    int-to-float v8, v8

    .line 301
    div-float/2addr v7, v8

    .line 302
    cmpl-float v8, v7, v1

    .line 303
    .line 304
    if-lez v8, :cond_11

    .line 305
    .line 306
    move v1, v7

    .line 307
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_12
    if-eqz v9, :cond_14

    .line 311
    .line 312
    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 313
    .line 314
    int-to-float v2, v2

    .line 315
    mul-float/2addr v1, v2

    .line 316
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->e1(I)V

    .line 325
    .line 326
    .line 327
    const/4 v6, 0x0

    .line 328
    const/4 v12, 0x0

    .line 329
    :goto_b
    if-ge v12, v13, :cond_14

    .line 330
    .line 331
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 332
    .line 333
    aget-object v1, v1, v12

    .line 334
    .line 335
    const/high16 v2, 0x40000000    # 2.0f

    .line 336
    .line 337
    const/4 v14, 0x1

    .line 338
    invoke-virtual {v0, v1, v2, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->k1(Landroid/view/View;IZ)V

    .line 339
    .line 340
    .line 341
    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 342
    .line 343
    invoke-virtual {v2, v1}, Lqt;->c(Landroid/view/View;)I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-le v1, v6, :cond_13

    .line 348
    .line 349
    move v6, v1

    .line 350
    :cond_13
    add-int/lit8 v12, v12, 0x1

    .line 351
    .line 352
    goto :goto_b

    .line 353
    :cond_14
    const/4 v12, 0x0

    .line 354
    :goto_c
    if-ge v12, v13, :cond_18

    .line 355
    .line 356
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 357
    .line 358
    aget-object v1, v1, v12

    .line 359
    .line 360
    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 361
    .line 362
    invoke-virtual {v2, v1}, Lqt;->c(Landroid/view/View;)I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-eq v2, v6, :cond_16

    .line 367
    .line 368
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    check-cast v2, Lil;

    .line 373
    .line 374
    iget-object v5, v2, Lxw;->b:Landroid/graphics/Rect;

    .line 375
    .line 376
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 377
    .line 378
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 379
    .line 380
    add-int/2addr v7, v8

    .line 381
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 382
    .line 383
    add-int/2addr v7, v8

    .line 384
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 385
    .line 386
    add-int/2addr v7, v8

    .line 387
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 388
    .line 389
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 390
    .line 391
    add-int/2addr v8, v5

    .line 392
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 393
    .line 394
    add-int/2addr v8, v5

    .line 395
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 396
    .line 397
    add-int/2addr v8, v5

    .line 398
    iget v5, v2, Lil;->e:I

    .line 399
    .line 400
    iget v9, v2, Lil;->f:I

    .line 401
    .line 402
    invoke-virtual {v0, v5, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->g1(II)I

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 407
    .line 408
    const/4 v14, 0x1

    .line 409
    if-ne v9, v14, :cond_15

    .line 410
    .line 411
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 412
    .line 413
    const/4 v9, 0x0

    .line 414
    const/high16 v10, 0x40000000    # 2.0f

    .line 415
    .line 416
    invoke-static {v9, v5, v10, v8, v2}, Lww;->w(ZIIII)I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    sub-int v5, v6, v7

    .line 421
    .line 422
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    goto :goto_d

    .line 427
    :cond_15
    const/4 v9, 0x0

    .line 428
    const/high16 v10, 0x40000000    # 2.0f

    .line 429
    .line 430
    sub-int v8, v6, v8

    .line 431
    .line 432
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 437
    .line 438
    invoke-static {v9, v5, v10, v7, v2}, Lww;->w(ZIIII)I

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    move v2, v8

    .line 443
    :goto_d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    check-cast v7, Lxw;

    .line 448
    .line 449
    invoke-virtual {v0, v1, v2, v5, v7}, Lww;->w0(Landroid/view/View;IILxw;)Z

    .line 450
    .line 451
    .line 452
    move-result v7

    .line 453
    if-eqz v7, :cond_17

    .line 454
    .line 455
    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    .line 456
    .line 457
    .line 458
    goto :goto_e

    .line 459
    :cond_16
    const/4 v9, 0x0

    .line 460
    const/high16 v10, 0x40000000    # 2.0f

    .line 461
    .line 462
    :cond_17
    :goto_e
    add-int/lit8 v12, v12, 0x1

    .line 463
    .line 464
    goto :goto_c

    .line 465
    :cond_18
    const/4 v9, 0x0

    .line 466
    iput v6, v4, Lfo;->a:I

    .line 467
    .line 468
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 469
    .line 470
    iget v2, v3, Lgo;->f:I

    .line 471
    .line 472
    iget v12, v3, Lgo;->b:I

    .line 473
    .line 474
    const/4 v14, 0x1

    .line 475
    if-ne v1, v14, :cond_1a

    .line 476
    .line 477
    const/4 v8, -0x1

    .line 478
    if-ne v2, v8, :cond_19

    .line 479
    .line 480
    sub-int v1, v12, v6

    .line 481
    .line 482
    move v2, v12

    .line 483
    move v12, v1

    .line 484
    move v1, v2

    .line 485
    :goto_f
    move v2, v9

    .line 486
    move v3, v2

    .line 487
    goto :goto_11

    .line 488
    :cond_19
    add-int v1, v12, v6

    .line 489
    .line 490
    goto :goto_f

    .line 491
    :cond_1a
    const/4 v8, -0x1

    .line 492
    if-ne v2, v8, :cond_1b

    .line 493
    .line 494
    sub-int v1, v12, v6

    .line 495
    .line 496
    move v2, v1

    .line 497
    move v1, v9

    .line 498
    move v3, v12

    .line 499
    :goto_10
    move v12, v1

    .line 500
    goto :goto_11

    .line 501
    :cond_1b
    add-int v1, v12, v6

    .line 502
    .line 503
    move v3, v1

    .line 504
    move v1, v9

    .line 505
    move v2, v12

    .line 506
    goto :goto_10

    .line 507
    :goto_11
    move v7, v9

    .line 508
    :goto_12
    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 509
    .line 510
    if-ge v7, v13, :cond_20

    .line 511
    .line 512
    aget-object v5, v5, v7

    .line 513
    .line 514
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 515
    .line 516
    .line 517
    move-result-object v6

    .line 518
    check-cast v6, Lil;

    .line 519
    .line 520
    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 521
    .line 522
    const/4 v14, 0x1

    .line 523
    if-ne v8, v14, :cond_1d

    .line 524
    .line 525
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    if-eqz v2, :cond_1c

    .line 530
    .line 531
    invoke-virtual {v0}, Lww;->E()I

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    iget-object v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 536
    .line 537
    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 538
    .line 539
    iget v9, v6, Lil;->e:I

    .line 540
    .line 541
    sub-int/2addr v8, v9

    .line 542
    aget v3, v3, v8

    .line 543
    .line 544
    add-int/2addr v2, v3

    .line 545
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 546
    .line 547
    invoke-virtual {v3, v5}, Lqt;->d(Landroid/view/View;)I

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    sub-int v3, v2, v3

    .line 552
    .line 553
    move/from16 v17, v3

    .line 554
    .line 555
    move v3, v2

    .line 556
    move/from16 v2, v17

    .line 557
    .line 558
    goto :goto_13

    .line 559
    :cond_1c
    invoke-virtual {v0}, Lww;->E()I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    iget-object v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 564
    .line 565
    iget v8, v6, Lil;->e:I

    .line 566
    .line 567
    aget v3, v3, v8

    .line 568
    .line 569
    add-int/2addr v2, v3

    .line 570
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 571
    .line 572
    invoke-virtual {v3, v5}, Lqt;->d(Landroid/view/View;)I

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    add-int/2addr v3, v2

    .line 577
    goto :goto_13

    .line 578
    :cond_1d
    invoke-virtual {v0}, Lww;->G()I

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    iget-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 583
    .line 584
    iget v9, v6, Lil;->e:I

    .line 585
    .line 586
    aget v8, v8, v9

    .line 587
    .line 588
    add-int/2addr v1, v8

    .line 589
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 590
    .line 591
    invoke-virtual {v8, v5}, Lqt;->d(Landroid/view/View;)I

    .line 592
    .line 593
    .line 594
    move-result v8

    .line 595
    add-int/2addr v8, v1

    .line 596
    move v12, v1

    .line 597
    move v1, v8

    .line 598
    :goto_13
    invoke-static {v5, v2, v12, v3, v1}, Lww;->N(Landroid/view/View;IIII)V

    .line 599
    .line 600
    .line 601
    iget-object v8, v6, Lxw;->a:Lkx;

    .line 602
    .line 603
    invoke-virtual {v8}, Lkx;->h()Z

    .line 604
    .line 605
    .line 606
    move-result v8

    .line 607
    if-nez v8, :cond_1e

    .line 608
    .line 609
    iget-object v6, v6, Lxw;->a:Lkx;

    .line 610
    .line 611
    invoke-virtual {v6}, Lkx;->k()Z

    .line 612
    .line 613
    .line 614
    move-result v6

    .line 615
    if-eqz v6, :cond_1f

    .line 616
    .line 617
    :cond_1e
    const/4 v14, 0x1

    .line 618
    goto :goto_14

    .line 619
    :cond_1f
    const/4 v14, 0x1

    .line 620
    goto :goto_15

    .line 621
    :goto_14
    iput-boolean v14, v4, Lfo;->c:Z

    .line 622
    .line 623
    :goto_15
    iget-boolean v6, v4, Lfo;->d:Z

    .line 624
    .line 625
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    .line 626
    .line 627
    .line 628
    move-result v5

    .line 629
    or-int/2addr v5, v6

    .line 630
    iput-boolean v5, v4, Lfo;->d:Z

    .line 631
    .line 632
    add-int/lit8 v7, v7, 0x1

    .line 633
    .line 634
    goto :goto_12

    .line 635
    :cond_20
    const/4 v0, 0x0

    .line 636
    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    return-void

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final U(Lcx;Lhx;Landroid/view/View;Lm0;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lil;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p3, p4}, Lww;->V(Landroid/view/View;Lm0;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast v0, Lil;

    .line 14
    .line 15
    iget-object p3, v0, Lxw;->a:Lkx;

    .line 16
    .line 17
    invoke-virtual {p3}, Lkx;->b()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-virtual {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->h1(ILcx;Lhx;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 26
    .line 27
    iget p2, v0, Lil;->e:I

    .line 28
    .line 29
    iget p3, v0, Lil;->f:I

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    invoke-static {v0, p2, p3, p1, v1}, Ll0;->a(ZIIII)Ll0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p4, p0}, Lm0;->h(Ll0;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {v0, p1, v1, p2, p3}, Ll0;->a(ZIIII)Ll0;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p4, p0}, Lm0;->h(Ll0;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final U0(Lcx;Lhx;Leo;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->m1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lhx;->b()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_3

    .line 9
    .line 10
    iget-boolean v0, p2, Lhx;->g:Z

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p4, v0, :cond_0

    .line 16
    .line 17
    move p4, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p4, 0x0

    .line 20
    :goto_0
    iget v1, p3, Leo;->b:I

    .line 21
    .line 22
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->i1(ILcx;Lhx;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    :goto_1
    if-lez v1, :cond_3

    .line 29
    .line 30
    iget p4, p3, Leo;->b:I

    .line 31
    .line 32
    if-lez p4, :cond_3

    .line 33
    .line 34
    add-int/lit8 p4, p4, -0x1

    .line 35
    .line 36
    iput p4, p3, Leo;->b:I

    .line 37
    .line 38
    invoke-virtual {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->i1(ILcx;Lhx;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p2}, Lhx;->b()I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    sub-int/2addr p4, v0

    .line 48
    iget v0, p3, Leo;->b:I

    .line 49
    .line 50
    :goto_2
    if-ge v0, p4, :cond_2

    .line 51
    .line 52
    add-int/lit8 v2, v0, 0x1

    .line 53
    .line 54
    invoke-virtual {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->i1(ILcx;Lhx;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-le v3, v1, :cond_2

    .line 59
    .line 60
    move v0, v2

    .line 61
    move v1, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    iput v0, p3, Leo;->b:I

    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->f1()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final W(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ls4;->v()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ls4;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final X()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ls4;->v()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ls4;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final Y(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ls4;->v()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ls4;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final Z(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ls4;->v()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ls4;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final a0(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ls4;->v()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ls4;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final a1(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1(Z)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    .line 9
    .line 10
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b0(Lcx;Lhx;)V
    .locals 7

    .line 1
    iget-boolean v0, p2, Lhx;->g:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lww;->v()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v3}, Lww;->u(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lil;

    .line 25
    .line 26
    iget-object v5, v4, Lxw;->a:Lkx;

    .line 27
    .line 28
    invoke-virtual {v5}, Lkx;->b()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget v6, v4, Lil;->f:I

    .line 33
    .line 34
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    .line 36
    .line 37
    iget v4, v4, Lil;->e:I

    .line 38
    .line 39
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b0(Lcx;Lhx;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final c0(Lhx;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c0(Lhx;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 6
    .line 7
    return-void
.end method

.method public final e1(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v3, v0

    .line 9
    add-int/lit8 v4, v1, 0x1

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    array-length v3, v0

    .line 14
    sub-int/2addr v3, v2

    .line 15
    aget v3, v0, v3

    .line 16
    .line 17
    if-eq v3, p1, :cond_1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 24
    aput v3, v0, v3

    .line 25
    .line 26
    div-int v4, p1, v1

    .line 27
    .line 28
    rem-int/2addr p1, v1

    .line 29
    move v5, v3

    .line 30
    :goto_0
    if-gt v2, v1, :cond_3

    .line 31
    .line 32
    add-int/2addr v3, p1

    .line 33
    if-lez v3, :cond_2

    .line 34
    .line 35
    sub-int v6, v1, v3

    .line 36
    .line 37
    if-ge v6, p1, :cond_2

    .line 38
    .line 39
    add-int/lit8 v6, v4, 0x1

    .line 40
    .line 41
    sub-int/2addr v3, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v6, v4

    .line 44
    :goto_1
    add-int/2addr v5, v6

    .line 45
    aput v5, v0, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 51
    .line 52
    return-void
.end method

.method public final f(Lxw;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lil;

    .line 2
    .line 3
    return p0
.end method

.method public final f1()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 13
    .line 14
    new-array v0, v0, [Landroid/view/View;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 17
    .line 18
    return-void
.end method

.method public final g1(II)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 13
    .line 14
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 15
    .line 16
    sub-int v1, p0, p1

    .line 17
    .line 18
    aget v1, v0, v1

    .line 19
    .line 20
    sub-int/2addr p0, p1

    .line 21
    sub-int/2addr p0, p2

    .line 22
    aget p0, v0, p0

    .line 23
    .line 24
    sub-int/2addr v1, p0

    .line 25
    return v1

    .line 26
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 27
    .line 28
    add-int/2addr p2, p1

    .line 29
    aget p2, p0, p2

    .line 30
    .line 31
    aget p0, p0, p1

    .line 32
    .line 33
    sub-int/2addr p2, p0

    .line 34
    return p2
.end method

.method public final h1(ILcx;Lhx;)I
    .locals 1

    .line 1
    iget-boolean p3, p3, Lhx;->g:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p0}, Ls4;->u(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p2, p1}, Lcx;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, -0x1

    .line 22
    if-ne p1, p2, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p0}, Ls4;->u(II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final i1(ILcx;Lhx;)I
    .locals 2

    .line 1
    iget-boolean p3, p3, Lhx;->g:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    rem-int/2addr p1, p0

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eq p3, v1, :cond_1

    .line 22
    .line 23
    return p3

    .line 24
    :cond_1
    invoke-virtual {p2, p1}, Lcx;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-ne p1, v1, :cond_2

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    rem-int/2addr p1, p0

    .line 38
    return p1
.end method

.method public final j1(ILcx;Lhx;)I
    .locals 2

    .line 1
    iget-boolean p3, p3, Lhx;->g:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    const/4 p3, -0x1

    .line 15
    invoke-virtual {p0, p1, p3}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eq p0, p3, :cond_1

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    invoke-virtual {p2, p1}, Lcx;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-ne p0, p3, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    return v1
.end method

.method public final k(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(Lhx;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final k1(Landroid/view/View;IZ)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lil;

    .line 6
    .line 7
    iget-object v1, v0, Lxw;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    add-int/2addr v3, v1

    .line 25
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    .line 27
    add-int/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 29
    .line 30
    add-int/2addr v3, v1

    .line 31
    iget v1, v0, Lil;->e:I

    .line 32
    .line 33
    iget v4, v0, Lil;->f:I

    .line 34
    .line 35
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->g1(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x1

    .line 43
    if-ne v4, v6, :cond_0

    .line 44
    .line 45
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 46
    .line 47
    invoke-static {v5, v1, p2, v3, v4}, Lww;->w(ZIIII)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 52
    .line 53
    invoke-virtual {v1}, Lqt;->k()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget v3, p0, Lww;->m:I

    .line 58
    .line 59
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 60
    .line 61
    invoke-static {v6, v1, v3, v2, v0}, Lww;->w(ZIIII)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 67
    .line 68
    invoke-static {v5, v1, p2, v2, v4}, Lww;->w(ZIIII)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 73
    .line 74
    invoke-virtual {v1}, Lqt;->k()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget v2, p0, Lww;->l:I

    .line 79
    .line 80
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 81
    .line 82
    invoke-static {v6, v1, v2, v3, v0}, Lww;->w(ZIIII)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    move v7, v0

    .line 87
    move v0, p2

    .line 88
    move p2, v7

    .line 89
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lxw;

    .line 94
    .line 95
    if-eqz p3, :cond_1

    .line 96
    .line 97
    invoke-virtual {p0, p1, p2, v0, v1}, Lww;->w0(Landroid/view/View;IILxw;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lww;->u0(Landroid/view/View;IILxw;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    :goto_1
    if-eqz p0, :cond_2

    .line 107
    .line 108
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
.end method

.method public final l(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Lhx;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final l1(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 8
    .line 9
    if-lt p1, v0, :cond_1

    .line 10
    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Ls4;

    .line 14
    .line 15
    invoke-virtual {p1}, Ls4;->v()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lww;->l0()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string p0, "Span count should be at least 1. Provided "

    .line 23
    .line 24
    invoke-static {p0, p1}, Lg9;->f(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final m0(ILcx;Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->m1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->f1()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->m0(ILcx;Lhx;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final m1()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lww;->n:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lww;->F()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Lww;->E()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    :goto_0
    sub-int/2addr v0, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget v0, p0, Lww;->o:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lww;->D()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-int/2addr v0, v1

    .line 26
    invoke-virtual {p0}, Lww;->G()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->e1(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final n(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(Lhx;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final o(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Lhx;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final o0(ILcx;Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->m1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->f1()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->o0(ILcx;Lhx;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final r()Lxw;
    .locals 2

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, -0x2

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lil;

    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Lil;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lil;

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lil;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final r0(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Lww;->r0(Landroid/graphics/Rect;II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lww;->E()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lww;->F()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    invoke-virtual {p0}, Lww;->G()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lww;->D()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v0

    .line 26
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v0, v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    add-int/2addr p1, v2

    .line 36
    iget-object v0, p0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    sget-object v2, Lw50;->a:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {p3, p1, v0}, Lww;->g(III)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 49
    .line 50
    array-length v0, p3

    .line 51
    sub-int/2addr v0, v3

    .line 52
    aget p3, p3, v0

    .line 53
    .line 54
    add-int/2addr p3, v1

    .line 55
    iget-object v0, p0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {p2, p3, v0}, Lww;->g(III)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    add-int/2addr p1, v1

    .line 71
    iget-object v0, p0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {p2, p1, v0}, Lww;->g(III)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 84
    .line 85
    array-length v0, p1

    .line 86
    sub-int/2addr v0, v3

    .line 87
    aget p1, p1, v0

    .line 88
    .line 89
    add-int/2addr p1, v2

    .line 90
    iget-object v0, p0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-static {p3, p1, v0}, Lww;->g(III)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    :goto_0
    iget-object p0, p0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final s(Landroid/content/Context;Landroid/util/AttributeSet;)Lxw;
    .locals 0

    .line 1
    new-instance p0, Lil;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lxw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lil;->e:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lil;->f:I

    .line 11
    .line 12
    return-object p0
.end method

.method public final t(Landroid/view/ViewGroup$LayoutParams;)Lxw;
    .locals 2

    .line 1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, -0x1

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lil;

    .line 8
    .line 9
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lxw;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 12
    .line 13
    .line 14
    iput v1, p0, Lil;->e:I

    .line 15
    .line 16
    iput v0, p0, Lil;->f:I

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance p0, Lil;

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lxw;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iput v1, p0, Lil;->e:I

    .line 25
    .line 26
    iput v0, p0, Lil;->f:I

    .line 27
    .line 28
    return-object p0
.end method

.method public final x(Lcx;Lhx;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p2}, Lhx;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    invoke-virtual {p2}, Lhx;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->h1(ILcx;Lhx;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    add-int/2addr p0, v1

    .line 27
    return p0
.end method

.method public final z0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
