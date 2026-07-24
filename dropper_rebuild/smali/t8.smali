.class public final Lt8;
.super Lh70;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final k:Ljava/util/ArrayList;

.field public l:I


# direct methods
.method public constructor <init>(Lxb;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lh70;-><init>(Lxb;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lt8;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p2, p0, Lh70;->f:I

    .line 12
    .line 13
    iget-object v0, p0, Lh70;->b:Lxb;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lxb;->m(I)Lxb;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    move-object v0, p2

    .line 21
    move-object p2, v4

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget p2, p0, Lh70;->f:I

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Lxb;->m(I)Lxb;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object p2, p0, Lh70;->b:Lxb;

    .line 32
    .line 33
    iget v0, p0, Lh70;->f:I

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p2, Lxb;->d:Lsl;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-ne v0, v2, :cond_2

    .line 43
    .line 44
    iget-object v0, p2, Lxb;->e:Le50;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v0, v1

    .line 48
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lh70;->f:I

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Lxb;->l(I)Lxb;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :goto_2
    if-eqz p2, :cond_5

    .line 58
    .line 59
    iget v0, p0, Lh70;->f:I

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p2, Lxb;->d:Lsl;

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    if-ne v0, v2, :cond_4

    .line 67
    .line 68
    iget-object v0, p2, Lxb;->e:Le50;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    move-object v0, v1

    .line 72
    :goto_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget v0, p0, Lh70;->f:I

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Lxb;->l(I)Lxb;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    goto :goto_2

    .line 82
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const/4 v0, 0x0

    .line 87
    :cond_6
    :goto_4
    if-ge v0, p2, :cond_8

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    check-cast v1, Lh70;

    .line 96
    .line 97
    iget v3, p0, Lh70;->f:I

    .line 98
    .line 99
    if-nez v3, :cond_7

    .line 100
    .line 101
    iget-object v1, v1, Lh70;->b:Lxb;

    .line 102
    .line 103
    iput-object p0, v1, Lxb;->b:Lt8;

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_7
    if-ne v3, v2, :cond_6

    .line 107
    .line 108
    iget-object v1, v1, Lh70;->b:Lxb;

    .line 109
    .line 110
    iput-object p0, v1, Lxb;->c:Lt8;

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_8
    iget p2, p0, Lh70;->f:I

    .line 114
    .line 115
    if-nez p2, :cond_9

    .line 116
    .line 117
    iget-object p2, p0, Lh70;->b:Lxb;

    .line 118
    .line 119
    iget-object p2, p2, Lxb;->T:Lxb;

    .line 120
    .line 121
    check-cast p2, Lyb;

    .line 122
    .line 123
    iget-boolean p2, p2, Lyb;->v0:Z

    .line 124
    .line 125
    if-eqz p2, :cond_9

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-le p2, v2, :cond_9

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    sub-int/2addr p2, v2

    .line 138
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lh70;

    .line 143
    .line 144
    iget-object p1, p1, Lh70;->b:Lxb;

    .line 145
    .line 146
    iput-object p1, p0, Lh70;->b:Lxb;

    .line 147
    .line 148
    :cond_9
    iget p1, p0, Lh70;->f:I

    .line 149
    .line 150
    iget-object p2, p0, Lh70;->b:Lxb;

    .line 151
    .line 152
    if-nez p1, :cond_a

    .line 153
    .line 154
    iget p1, p2, Lxb;->i0:I

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_a
    iget p1, p2, Lxb;->j0:I

    .line 158
    .line 159
    :goto_5
    iput p1, p0, Lt8;->l:I

    .line 160
    .line 161
    return-void
.end method


# virtual methods
.method public final a(Lse;)V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lh70;->h:Lue;

    iget-boolean v2, v1, Lue;->j:Z

    if-eqz v2, :cond_56

    iget-object v2, v0, Lh70;->i:Lue;

    iget-boolean v3, v2, Lue;->j:Z

    if-nez v3, :cond_0

    goto/16 :goto_32

    .line 2
    :cond_0
    iget-object v3, v0, Lh70;->b:Lxb;

    .line 3
    iget-object v3, v3, Lxb;->T:Lxb;

    .line 4
    instance-of v4, v3, Lyb;

    if-eqz v4, :cond_1

    .line 5
    check-cast v3, Lyb;

    .line 6
    iget-boolean v3, v3, Lyb;->v0:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_0
    iget v4, v2, Lue;->g:I

    iget v6, v1, Lue;->g:I

    sub-int/2addr v4, v6

    .line 8
    iget-object v6, v0, Lt8;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    const/4 v9, -0x1

    const/16 v10, 0x8

    if-ge v8, v7, :cond_2

    .line 9
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh70;

    .line 10
    iget-object v11, v11, Lh70;->b:Lxb;

    .line 11
    iget v11, v11, Lxb;->g0:I

    if-ne v11, v10, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v9

    :cond_3
    add-int/lit8 v11, v7, -0x1

    move v12, v11

    :goto_2
    if-ltz v12, :cond_5

    .line 12
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lh70;

    .line 13
    iget-object v13, v13, Lh70;->b:Lxb;

    .line 14
    iget v13, v13, Lxb;->g0:I

    if-ne v13, v10, :cond_4

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_4
    move v9, v12

    :cond_5
    const/4 v12, 0x0

    :goto_3
    const/4 v15, 0x2

    const/16 p1, 0x0

    if-ge v12, v15, :cond_14

    move/from16 v19, p1

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_4
    if-ge v5, v7, :cond_11

    .line 15
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    check-cast v13, Lh70;

    .line 16
    iget-object v14, v13, Lh70;->b:Lxb;

    move/from16 v22, v3

    .line 17
    iget v3, v14, Lxb;->g0:I

    if-ne v3, v10, :cond_6

    move/from16 v24, v12

    goto/16 :goto_a

    :cond_6
    add-int/lit8 v18, v18, 0x1

    if-lez v5, :cond_7

    if-lt v5, v8, :cond_7

    .line 18
    iget-object v3, v13, Lh70;->h:Lue;

    iget v3, v3, Lue;->f:I

    add-int/2addr v15, v3

    .line 19
    :cond_7
    iget-object v3, v13, Lh70;->e:Lgf;

    iget v10, v3, Lue;->g:I

    move/from16 v23, v10

    .line 20
    iget v10, v13, Lh70;->d:I

    move/from16 v24, v12

    const/4 v12, 0x3

    if-eq v10, v12, :cond_8

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_b

    .line 21
    iget v3, v0, Lh70;->f:I

    if-nez v3, :cond_9

    iget-object v12, v14, Lxb;->d:Lsl;

    iget-object v12, v12, Lh70;->e:Lgf;

    iget-boolean v12, v12, Lue;->j:Z

    if-nez v12, :cond_9

    goto/16 :goto_32

    :cond_9
    const/4 v12, 0x1

    if-ne v3, v12, :cond_a

    .line 22
    iget-object v3, v14, Lxb;->e:Le50;

    iget-object v3, v3, Lh70;->e:Lgf;

    iget-boolean v3, v3, Lue;->j:Z

    if-nez v3, :cond_a

    goto/16 :goto_32

    :cond_a
    move/from16 v25, v10

    goto :goto_7

    :cond_b
    move/from16 v25, v10

    const/4 v12, 0x1

    .line 23
    iget v10, v13, Lh70;->a:I

    if-ne v10, v12, :cond_c

    if-nez v24, :cond_c

    .line 24
    iget v10, v3, Lgf;->m:I

    add-int/lit8 v17, v17, 0x1

    :goto_6
    const/16 v25, 0x1

    goto :goto_8

    .line 25
    :cond_c
    iget-boolean v3, v3, Lue;->j:Z

    if-eqz v3, :cond_d

    move/from16 v10, v23

    goto :goto_6

    :cond_d
    :goto_7
    move/from16 v10, v23

    :goto_8
    if-nez v25, :cond_e

    add-int/lit8 v17, v17, 0x1

    .line 26
    iget-object v3, v14, Lxb;->k0:[F

    iget v10, v0, Lh70;->f:I

    aget v3, v3, v10

    cmpl-float v10, v3, p1

    if-ltz v10, :cond_f

    add-float v19, v19, v3

    goto :goto_9

    :cond_e
    add-int/2addr v15, v10

    :cond_f
    :goto_9
    if-ge v5, v11, :cond_10

    if-ge v5, v9, :cond_10

    .line 27
    iget-object v3, v13, Lh70;->i:Lue;

    iget v3, v3, Lue;->f:I

    neg-int v3, v3

    add-int/2addr v15, v3

    :cond_10
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v22

    move/from16 v12, v24

    const/16 v10, 0x8

    goto/16 :goto_4

    :cond_11
    move/from16 v22, v3

    move/from16 v24, v12

    if-lt v15, v4, :cond_13

    if-nez v17, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v12, v24, 0x1

    move/from16 v3, v22

    const/16 v10, 0x8

    goto/16 :goto_3

    :cond_13
    :goto_b
    move/from16 v3, v17

    move/from16 v5, v18

    goto :goto_c

    :cond_14
    move/from16 v22, v3

    move/from16 v19, p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    .line 28
    :goto_c
    iget v1, v1, Lue;->g:I

    if-eqz v22, :cond_15

    .line 29
    iget v1, v2, Lue;->g:I

    :cond_15
    const/high16 v2, 0x3f000000    # 0.5f

    if-le v15, v4, :cond_17

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v22, :cond_16

    sub-int v12, v15, v4

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v12, v2

    float-to-int v10, v12

    add-int/2addr v1, v10

    goto :goto_d

    :cond_16
    sub-int v12, v15, v4

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v12, v2

    float-to-int v10, v12

    sub-int/2addr v1, v10

    :cond_17
    :goto_d
    if-lez v3, :cond_26

    sub-int v10, v4, v15

    int-to-float v10, v10

    int-to-float v12, v3

    div-float v12, v10, v12

    add-float/2addr v12, v2

    float-to-int v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_e
    if-ge v13, v7, :cond_1f

    .line 30
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v2

    move-object/from16 v2, v17

    check-cast v2, Lh70;

    move/from16 v17, v1

    .line 31
    iget-object v1, v2, Lh70;->b:Lxb;

    move/from16 v23, v3

    iget-object v3, v2, Lh70;->e:Lgf;

    move/from16 v24, v10

    .line 32
    iget v10, v1, Lxb;->g0:I

    move/from16 v25, v12

    const/16 v12, 0x8

    if-ne v10, v12, :cond_19

    :cond_18
    move/from16 v26, v13

    goto :goto_12

    .line 33
    :cond_19
    iget v10, v2, Lh70;->d:I

    const/4 v12, 0x3

    if-ne v10, v12, :cond_18

    iget-boolean v10, v3, Lue;->j:Z

    if-nez v10, :cond_18

    cmpl-float v10, v19, p1

    if-lez v10, :cond_1a

    .line 34
    iget-object v10, v1, Lxb;->k0:[F

    iget v12, v0, Lh70;->f:I

    aget v10, v10, v12

    mul-float v10, v10, v24

    div-float v10, v10, v19

    add-float v10, v10, v18

    float-to-int v10, v10

    goto :goto_f

    :cond_1a
    move/from16 v10, v25

    .line 35
    :goto_f
    iget v12, v0, Lh70;->f:I

    if-nez v12, :cond_1b

    .line 36
    iget v12, v1, Lxb;->v:I

    .line 37
    iget v1, v1, Lxb;->u:I

    goto :goto_10

    .line 38
    :cond_1b
    iget v12, v1, Lxb;->y:I

    .line 39
    iget v1, v1, Lxb;->x:I

    .line 40
    :goto_10
    iget v2, v2, Lh70;->a:I

    move/from16 v26, v13

    const/4 v13, 0x1

    if-ne v2, v13, :cond_1c

    .line 41
    iget v2, v3, Lgf;->m:I

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_11

    :cond_1c
    move v2, v10

    .line 42
    :goto_11
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v12, :cond_1d

    .line 43
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1d
    if-eq v1, v10, :cond_1e

    add-int/lit8 v14, v14, 0x1

    move v10, v1

    .line 44
    :cond_1e
    invoke-virtual {v3, v10}, Lgf;->d(I)V

    :goto_12
    add-int/lit8 v13, v26, 0x1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v10, v24

    move/from16 v12, v25

    goto :goto_e

    :cond_1f
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    if-lez v14, :cond_23

    sub-int v3, v23, v14

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_13
    if-ge v1, v7, :cond_24

    .line 45
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh70;

    .line 46
    iget-object v10, v2, Lh70;->b:Lxb;

    .line 47
    iget v10, v10, Lxb;->g0:I

    const/16 v12, 0x8

    if-ne v10, v12, :cond_20

    goto :goto_14

    :cond_20
    if-lez v1, :cond_21

    if-lt v1, v8, :cond_21

    .line 48
    iget-object v10, v2, Lh70;->h:Lue;

    iget v10, v10, Lue;->f:I

    add-int/2addr v15, v10

    .line 49
    :cond_21
    iget-object v10, v2, Lh70;->e:Lgf;

    iget v10, v10, Lue;->g:I

    add-int/2addr v15, v10

    if-ge v1, v11, :cond_22

    if-ge v1, v9, :cond_22

    .line 50
    iget-object v2, v2, Lh70;->i:Lue;

    iget v2, v2, Lue;->f:I

    neg-int v2, v2

    add-int/2addr v15, v2

    :cond_22
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_23
    move/from16 v3, v23

    .line 51
    :cond_24
    iget v1, v0, Lt8;->l:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    if-nez v14, :cond_25

    const/4 v1, 0x0

    .line 52
    iput v1, v0, Lt8;->l:I

    goto :goto_15

    :cond_25
    const/4 v1, 0x0

    goto :goto_15

    :cond_26
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_15
    if-le v15, v4, :cond_27

    .line 53
    iput v2, v0, Lt8;->l:I

    :cond_27
    if-lez v5, :cond_28

    if-nez v3, :cond_28

    if-ne v8, v9, :cond_28

    .line 54
    iput v2, v0, Lt8;->l:I

    .line 55
    :cond_28
    iget v2, v0, Lt8;->l:I

    const/4 v12, 0x1

    if-ne v2, v12, :cond_38

    if-le v5, v12, :cond_29

    sub-int/2addr v4, v15

    sub-int/2addr v5, v12

    .line 56
    div-int/2addr v4, v5

    goto :goto_16

    :cond_29
    if-ne v5, v12, :cond_2a

    sub-int/2addr v4, v15

    const/16 v16, 0x2

    .line 57
    div-int/lit8 v4, v4, 0x2

    goto :goto_16

    :cond_2a
    move v4, v1

    :goto_16
    if-lez v3, :cond_2b

    move v4, v1

    :cond_2b
    move v5, v1

    move/from16 v1, v17

    :goto_17
    if-ge v5, v7, :cond_56

    if-eqz v22, :cond_2c

    add-int/lit8 v0, v5, 0x1

    sub-int v0, v7, v0

    goto :goto_18

    :cond_2c
    move v0, v5

    .line 58
    :goto_18
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh70;

    .line 59
    iget-object v2, v0, Lh70;->b:Lxb;

    iget-object v3, v0, Lh70;->i:Lue;

    iget-object v10, v0, Lh70;->h:Lue;

    .line 60
    iget v2, v2, Lxb;->g0:I

    const/16 v12, 0x8

    if-ne v2, v12, :cond_2d

    .line 61
    invoke-virtual {v10, v1}, Lue;->d(I)V

    .line 62
    invoke-virtual {v3, v1}, Lue;->d(I)V

    goto :goto_1f

    :cond_2d
    if-lez v5, :cond_2f

    if-eqz v22, :cond_2e

    sub-int/2addr v1, v4

    goto :goto_19

    :cond_2e
    add-int/2addr v1, v4

    :cond_2f
    :goto_19
    if-lez v5, :cond_31

    if-lt v5, v8, :cond_31

    if-eqz v22, :cond_30

    .line 63
    iget v2, v10, Lue;->f:I

    sub-int/2addr v1, v2

    goto :goto_1a

    .line 64
    :cond_30
    iget v2, v10, Lue;->f:I

    add-int/2addr v1, v2

    :cond_31
    :goto_1a
    if-eqz v22, :cond_32

    .line 65
    invoke-virtual {v3, v1}, Lue;->d(I)V

    goto :goto_1b

    .line 66
    :cond_32
    invoke-virtual {v10, v1}, Lue;->d(I)V

    .line 67
    :goto_1b
    iget-object v2, v0, Lh70;->e:Lgf;

    iget v12, v2, Lue;->g:I

    .line 68
    iget v13, v0, Lh70;->d:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_33

    iget v13, v0, Lh70;->a:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_33

    .line 69
    iget v12, v2, Lgf;->m:I

    :cond_33
    if-eqz v22, :cond_34

    sub-int/2addr v1, v12

    goto :goto_1c

    :cond_34
    add-int/2addr v1, v12

    :goto_1c
    if-eqz v22, :cond_35

    .line 70
    invoke-virtual {v10, v1}, Lue;->d(I)V

    :goto_1d
    const/4 v12, 0x1

    goto :goto_1e

    .line 71
    :cond_35
    invoke-virtual {v3, v1}, Lue;->d(I)V

    goto :goto_1d

    .line 72
    :goto_1e
    iput-boolean v12, v0, Lh70;->g:Z

    if-ge v5, v11, :cond_37

    if-ge v5, v9, :cond_37

    if-eqz v22, :cond_36

    .line 73
    iget v0, v3, Lue;->f:I

    neg-int v0, v0

    sub-int/2addr v1, v0

    goto :goto_1f

    .line 74
    :cond_36
    iget v0, v3, Lue;->f:I

    neg-int v0, v0

    add-int/2addr v1, v0

    :cond_37
    :goto_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_38
    if-nez v2, :cond_45

    sub-int/2addr v4, v15

    const/16 v21, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 75
    div-int/2addr v4, v5

    if-lez v3, :cond_39

    move v4, v1

    :cond_39
    move v5, v1

    move/from16 v1, v17

    :goto_20
    if-ge v5, v7, :cond_56

    if-eqz v22, :cond_3a

    add-int/lit8 v0, v5, 0x1

    sub-int v0, v7, v0

    goto :goto_21

    :cond_3a
    move v0, v5

    .line 76
    :goto_21
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh70;

    .line 77
    iget-object v2, v0, Lh70;->b:Lxb;

    iget-object v3, v0, Lh70;->i:Lue;

    iget-object v10, v0, Lh70;->h:Lue;

    .line 78
    iget v2, v2, Lxb;->g0:I

    const/16 v12, 0x8

    if-ne v2, v12, :cond_3b

    .line 79
    invoke-virtual {v10, v1}, Lue;->d(I)V

    .line 80
    invoke-virtual {v3, v1}, Lue;->d(I)V

    goto :goto_27

    :cond_3b
    if-eqz v22, :cond_3c

    sub-int/2addr v1, v4

    goto :goto_22

    :cond_3c
    add-int/2addr v1, v4

    :goto_22
    if-lez v5, :cond_3e

    if-lt v5, v8, :cond_3e

    if-eqz v22, :cond_3d

    .line 81
    iget v2, v10, Lue;->f:I

    sub-int/2addr v1, v2

    goto :goto_23

    .line 82
    :cond_3d
    iget v2, v10, Lue;->f:I

    add-int/2addr v1, v2

    :cond_3e
    :goto_23
    if-eqz v22, :cond_3f

    .line 83
    invoke-virtual {v3, v1}, Lue;->d(I)V

    goto :goto_24

    .line 84
    :cond_3f
    invoke-virtual {v10, v1}, Lue;->d(I)V

    .line 85
    :goto_24
    iget-object v2, v0, Lh70;->e:Lgf;

    iget v12, v2, Lue;->g:I

    .line 86
    iget v13, v0, Lh70;->d:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_40

    iget v0, v0, Lh70;->a:I

    const/4 v14, 0x1

    if-ne v0, v14, :cond_40

    .line 87
    iget v0, v2, Lgf;->m:I

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_40
    if-eqz v22, :cond_41

    sub-int/2addr v1, v12

    goto :goto_25

    :cond_41
    add-int/2addr v1, v12

    :goto_25
    if-eqz v22, :cond_42

    .line 88
    invoke-virtual {v10, v1}, Lue;->d(I)V

    goto :goto_26

    .line 89
    :cond_42
    invoke-virtual {v3, v1}, Lue;->d(I)V

    :goto_26
    if-ge v5, v11, :cond_44

    if-ge v5, v9, :cond_44

    if-eqz v22, :cond_43

    .line 90
    iget v0, v3, Lue;->f:I

    neg-int v0, v0

    sub-int/2addr v1, v0

    goto :goto_27

    .line 91
    :cond_43
    iget v0, v3, Lue;->f:I

    neg-int v0, v0

    add-int/2addr v1, v0

    :cond_44
    :goto_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_45
    const/4 v5, 0x2

    if-ne v2, v5, :cond_56

    .line 92
    iget v2, v0, Lh70;->f:I

    iget-object v0, v0, Lh70;->b:Lxb;

    if-nez v2, :cond_46

    .line 93
    iget v0, v0, Lxb;->d0:F

    goto :goto_28

    .line 94
    :cond_46
    iget v0, v0, Lxb;->e0:F

    :goto_28
    if-eqz v22, :cond_47

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    :cond_47
    sub-int/2addr v4, v15

    int-to-float v2, v4

    mul-float/2addr v2, v0

    add-float v2, v2, v18

    float-to-int v0, v2

    if-ltz v0, :cond_48

    if-lez v3, :cond_49

    :cond_48
    move v0, v1

    :cond_49
    if-eqz v22, :cond_4a

    sub-int v0, v17, v0

    goto :goto_29

    :cond_4a
    add-int v0, v17, v0

    :goto_29
    move v5, v1

    :goto_2a
    if-ge v5, v7, :cond_56

    if-eqz v22, :cond_4b

    add-int/lit8 v1, v5, 0x1

    sub-int v1, v7, v1

    goto :goto_2b

    :cond_4b
    move v1, v5

    .line 95
    :goto_2b
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh70;

    .line 96
    iget-object v2, v1, Lh70;->b:Lxb;

    iget-object v3, v1, Lh70;->i:Lue;

    iget-object v4, v1, Lh70;->h:Lue;

    .line 97
    iget v2, v2, Lxb;->g0:I

    const/16 v12, 0x8

    if-ne v2, v12, :cond_4c

    .line 98
    invoke-virtual {v4, v0}, Lue;->d(I)V

    .line 99
    invoke-virtual {v3, v0}, Lue;->d(I)V

    const/4 v13, 0x1

    const/4 v14, 0x3

    goto :goto_31

    :cond_4c
    if-lez v5, :cond_4e

    if-lt v5, v8, :cond_4e

    if-eqz v22, :cond_4d

    .line 100
    iget v2, v4, Lue;->f:I

    sub-int/2addr v0, v2

    goto :goto_2c

    .line 101
    :cond_4d
    iget v2, v4, Lue;->f:I

    add-int/2addr v0, v2

    :cond_4e
    :goto_2c
    if-eqz v22, :cond_4f

    .line 102
    invoke-virtual {v3, v0}, Lue;->d(I)V

    goto :goto_2d

    .line 103
    :cond_4f
    invoke-virtual {v4, v0}, Lue;->d(I)V

    .line 104
    :goto_2d
    iget-object v2, v1, Lh70;->e:Lgf;

    iget v10, v2, Lue;->g:I

    .line 105
    iget v13, v1, Lh70;->d:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_50

    iget v1, v1, Lh70;->a:I

    const/4 v13, 0x1

    if-ne v1, v13, :cond_51

    .line 106
    iget v10, v2, Lgf;->m:I

    goto :goto_2e

    :cond_50
    const/4 v13, 0x1

    :cond_51
    :goto_2e
    if-eqz v22, :cond_52

    sub-int/2addr v0, v10

    goto :goto_2f

    :cond_52
    add-int/2addr v0, v10

    :goto_2f
    if-eqz v22, :cond_53

    .line 107
    invoke-virtual {v4, v0}, Lue;->d(I)V

    goto :goto_30

    .line 108
    :cond_53
    invoke-virtual {v3, v0}, Lue;->d(I)V

    :goto_30
    if-ge v5, v11, :cond_55

    if-ge v5, v9, :cond_55

    if-eqz v22, :cond_54

    .line 109
    iget v1, v3, Lue;->f:I

    neg-int v1, v1

    sub-int/2addr v0, v1

    goto :goto_31

    .line 110
    :cond_54
    iget v1, v3, Lue;->f:I

    neg-int v1, v1

    add-int/2addr v0, v1

    :cond_55
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_56
    :goto_32
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lt8;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    check-cast v4, Lh70;

    .line 18
    .line 19
    invoke-virtual {v4}, Lh70;->d()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ge v1, v3, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lh70;

    .line 36
    .line 37
    iget-object v4, v4, Lh70;->b:Lxb;

    .line 38
    .line 39
    sub-int/2addr v1, v3

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lh70;

    .line 45
    .line 46
    iget-object v0, v0, Lh70;->b:Lxb;

    .line 47
    .line 48
    iget v1, p0, Lh70;->f:I

    .line 49
    .line 50
    iget-object v5, p0, Lh70;->i:Lue;

    .line 51
    .line 52
    iget-object v6, p0, Lh70;->h:Lue;

    .line 53
    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    iget-object v1, v4, Lxb;->I:Lib;

    .line 57
    .line 58
    iget-object v0, v0, Lxb;->K:Lib;

    .line 59
    .line 60
    invoke-static {v1, v2}, Lh70;->i(Lib;I)Lue;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1}, Lib;->e()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p0}, Lt8;->m()Lxb;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    iget-object v1, v4, Lxb;->I:Lib;

    .line 75
    .line 76
    invoke-virtual {v1}, Lib;->e()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    :cond_2
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-static {v6, v3, v1}, Lh70;->b(Lue;Lue;I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-static {v0, v2}, Lh70;->i(Lib;I)Lue;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0}, Lib;->e()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0}, Lt8;->n()Lxb;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    iget-object v0, v2, Lxb;->K:Lib;

    .line 100
    .line 101
    invoke-virtual {v0}, Lib;->e()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    :cond_4
    if-eqz v1, :cond_9

    .line 106
    .line 107
    neg-int v0, v0

    .line 108
    invoke-static {v5, v1, v0}, Lh70;->b(Lue;Lue;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    iget-object v1, v4, Lxb;->J:Lib;

    .line 113
    .line 114
    iget-object v0, v0, Lxb;->L:Lib;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lh70;->i(Lib;I)Lue;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1}, Lib;->e()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {p0}, Lt8;->m()Lxb;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-eqz v4, :cond_6

    .line 129
    .line 130
    iget-object v1, v4, Lxb;->J:Lib;

    .line 131
    .line 132
    invoke-virtual {v1}, Lib;->e()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    :cond_6
    if-eqz v2, :cond_7

    .line 137
    .line 138
    invoke-static {v6, v2, v1}, Lh70;->b(Lue;Lue;I)V

    .line 139
    .line 140
    .line 141
    :cond_7
    invoke-static {v0, v3}, Lh70;->i(Lib;I)Lue;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0}, Lib;->e()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {p0}, Lt8;->n()Lxb;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-eqz v2, :cond_8

    .line 154
    .line 155
    iget-object v0, v2, Lxb;->L:Lib;

    .line 156
    .line 157
    invoke-virtual {v0}, Lib;->e()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    :cond_8
    if-eqz v1, :cond_9

    .line 162
    .line 163
    neg-int v0, v0

    .line 164
    invoke-static {v5, v1, v0}, Lh70;->b(Lue;Lue;I)V

    .line 165
    .line 166
    .line 167
    :cond_9
    :goto_1
    iput-object p0, v6, Lue;->a:Lh70;

    .line 168
    .line 169
    iput-object p0, v5, Lue;->a:Lh70;

    .line 170
    .line 171
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lt8;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lh70;

    .line 15
    .line 16
    invoke-virtual {v1}, Lh70;->e()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lh70;->c:Lpy;

    .line 3
    .line 4
    iget-object p0, p0, Lt8;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    check-cast v2, Lh70;

    .line 20
    .line 21
    invoke-virtual {v2}, Lh70;->f()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final j()J
    .locals 7

    .line 1
    iget-object p0, p0, Lt8;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lh70;

    .line 17
    .line 18
    iget-object v5, v4, Lh70;->h:Lue;

    .line 19
    .line 20
    iget v5, v5, Lue;->f:I

    .line 21
    .line 22
    int-to-long v5, v5

    .line 23
    add-long/2addr v1, v5

    .line 24
    invoke-virtual {v4}, Lh70;->j()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    add-long/2addr v5, v1

    .line 29
    iget-object v1, v4, Lh70;->i:Lue;

    .line 30
    .line 31
    iget v1, v1, Lue;->f:I

    .line 32
    .line 33
    int-to-long v1, v1

    .line 34
    add-long/2addr v1, v5

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-wide v1
.end method

.method public final k()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lt8;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lh70;

    .line 16
    .line 17
    invoke-virtual {v3}, Lh70;->k()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public final m()Lxb;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lt8;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lh70;

    .line 15
    .line 16
    iget-object v1, v1, Lh70;->b:Lxb;

    .line 17
    .line 18
    iget v2, v1, Lxb;->g0:I

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final n()Lxb;
    .locals 4

    .line 1
    iget-object p0, p0, Lt8;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lh70;

    .line 16
    .line 17
    iget-object v1, v1, Lh70;->b:Lxb;

    .line 18
    .line 19
    iget v2, v1, Lxb;->g0:I

    .line 20
    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ChainRun "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lh70;->f:I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "horizontal : "

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "vertical : "

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lt8;->k:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_1
    if-ge v2, v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    check-cast v3, Lh70;

    .line 36
    .line 37
    const-string v4, "<"

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "> "

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
