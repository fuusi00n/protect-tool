.class public final Lp5;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final a:Landroid/widget/TextView;

.field public b:Lb30;

.field public c:Lb30;

.field public d:Lb30;

.field public e:Lb30;

.field public f:Lb30;

.field public g:Lb30;

.field public h:Lb30;

.field public final i:Ly5;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lp5;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lp5;->k:I

    .line 9
    .line 10
    iput-object p1, p0, Lp5;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Ly5;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ly5;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lp5;->i:Ly5;

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Lj4;I)Lb30;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lj4;->a:Lcy;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Lcy;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lb30;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Lb30;->d:Z

    .line 18
    .line 19
    iput-object p0, p1, Lb30;->a:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public static h(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-ge v0, v1, :cond_d

    .line 6
    .line 7
    if-eqz p1, :cond_d

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p1}, Lrg;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {p0, p1}, Lrg;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget p2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 29
    .line 30
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 31
    .line 32
    if-le p2, v0, :cond_2

    .line 33
    .line 34
    move v1, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v1, p2

    .line 37
    :goto_0
    if-le p2, v0, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move p2, v0

    .line 41
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    if-ltz v1, :cond_c

    .line 48
    .line 49
    if-le p2, v0, :cond_4

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_4
    iget v4, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 54
    .line 55
    and-int/lit16 v4, v4, 0xfff

    .line 56
    .line 57
    const/16 v5, 0x81

    .line 58
    .line 59
    if-eq v4, v5, :cond_b

    .line 60
    .line 61
    const/16 v5, 0xe1

    .line 62
    .line 63
    if-eq v4, v5, :cond_b

    .line 64
    .line 65
    const/16 v5, 0x12

    .line 66
    .line 67
    if-ne v4, v5, :cond_5

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_5
    const/16 v3, 0x800

    .line 72
    .line 73
    if-gt v0, v3, :cond_6

    .line 74
    .line 75
    invoke-static {p0, p1, v1, p2}, Lvd;->R(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_6
    sub-int v0, p2, v1

    .line 80
    .line 81
    const/16 v3, 0x400

    .line 82
    .line 83
    if-le v0, v3, :cond_7

    .line 84
    .line 85
    move v3, v2

    .line 86
    goto :goto_2

    .line 87
    :cond_7
    move v3, v0

    .line 88
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    sub-int/2addr v4, p2

    .line 93
    rsub-int v5, v3, 0x800

    .line 94
    .line 95
    const-wide v6, 0x3fe999999999999aL

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    int-to-double v8, v5

    .line 101
    mul-double/2addr v8, v6

    .line 102
    double-to-int v6, v8

    .line 103
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    sub-int v6, v5, v6

    .line 108
    .line 109
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    sub-int/2addr v5, v4

    .line 114
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    sub-int/2addr v1, v5

    .line 119
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_8

    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    add-int/lit8 v5, v5, -0x1

    .line 132
    .line 133
    :cond_8
    add-int v6, p2, v4

    .line 134
    .line 135
    const/4 v7, 0x1

    .line 136
    sub-int/2addr v6, v7

    .line 137
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_9

    .line 146
    .line 147
    add-int/lit8 v4, v4, -0x1

    .line 148
    .line 149
    :cond_9
    add-int v6, v5, v3

    .line 150
    .line 151
    add-int v8, v6, v4

    .line 152
    .line 153
    if-eq v3, v0, :cond_a

    .line 154
    .line 155
    add-int v0, v1, v5

    .line 156
    .line 157
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    add-int/2addr v4, p2

    .line 162
    invoke-interface {p1, p2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const/4 p2, 0x2

    .line 167
    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 168
    .line 169
    aput-object v0, p2, v2

    .line 170
    .line 171
    aput-object p1, p2, v7

    .line 172
    .line 173
    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    goto :goto_3

    .line 178
    :cond_a
    add-int/2addr v8, v1

    .line 179
    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_3
    invoke-static {p0, p1, v5, v6}, Lvd;->R(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_b
    :goto_4
    invoke-static {p0, v3, v2, v2}, Lvd;->R(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_c
    :goto_5
    invoke-static {p0, v3, v2, v2}, Lvd;->R(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 192
    .line 193
    .line 194
    :cond_d
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Lb30;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lp5;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1, p2, p0}, Lj4;->e(Landroid/graphics/drawable/Drawable;Lb30;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lp5;->b:Lb30;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lp5;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lp5;->c:Lb30;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lp5;->d:Lb30;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lp5;->e:Lb30;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Lp5;->b:Lb30;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Lp5;->a(Landroid/graphics/drawable/Drawable;Lb30;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Lp5;->c:Lb30;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Lp5;->a(Landroid/graphics/drawable/Drawable;Lb30;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Lp5;->d:Lb30;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Lp5;->a(Landroid/graphics/drawable/Drawable;Lb30;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Lp5;->e:Lb30;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Lp5;->a(Landroid/graphics/drawable/Drawable;Lb30;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lp5;->f:Lb30;

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lp5;->g:Lb30;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void

    .line 65
    :cond_3
    :goto_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 70
    .line 71
    iget-object v3, p0, Lp5;->f:Lb30;

    .line 72
    .line 73
    invoke-virtual {p0, v2, v3}, Lp5;->a(Landroid/graphics/drawable/Drawable;Lb30;)V

    .line 74
    .line 75
    .line 76
    aget-object v0, v0, v1

    .line 77
    .line 78
    iget-object v1, p0, Lp5;->g:Lb30;

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Lp5;->a(Landroid/graphics/drawable/Drawable;Lb30;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lp5;->h:Lb30;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lb30;->a:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lp5;->h:Lb30;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lb30;->b:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    iget-object v1, v0, Lp5;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    invoke-static {}, Lj4;->a()Lj4;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    sget-object v2, Liw;->AppCompatTextHelper:[I

    .line 18
    .line 19
    invoke-static {v8, v3, v2, v5}, Ly2;->p(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ly2;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Liw;->AppCompatTextHelper:[I

    .line 28
    .line 29
    iget-object v4, v10, Ly2;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Landroid/content/res/TypedArray;

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    move v6, v5

    .line 35
    move-object v5, v4

    .line 36
    move-object/from16 v4, p1

    .line 37
    .line 38
    invoke-static/range {v1 .. v7}, Lw50;->k(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 39
    .line 40
    .line 41
    move-object v7, v1

    .line 42
    move-object v3, v4

    .line 43
    move v5, v6

    .line 44
    sget v1, Liw;->AppCompatTextHelper_android_textAppearance:I

    .line 45
    .line 46
    iget-object v2, v10, Ly2;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Landroid/content/res/TypedArray;

    .line 49
    .line 50
    const/4 v11, -0x1

    .line 51
    invoke-virtual {v2, v1, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sget v4, Liw;->AppCompatTextHelper_android_drawableLeft:I

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v12, 0x0

    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    sget v4, Liw;->AppCompatTextHelper_android_drawableLeft:I

    .line 65
    .line 66
    invoke-virtual {v2, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-static {v8, v9, v4}, Lp5;->c(Landroid/content/Context;Lj4;I)Lb30;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iput-object v4, v0, Lp5;->b:Lb30;

    .line 75
    .line 76
    :cond_0
    sget v4, Liw;->AppCompatTextHelper_android_drawableTop:I

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    sget v4, Liw;->AppCompatTextHelper_android_drawableTop:I

    .line 85
    .line 86
    invoke-virtual {v2, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-static {v8, v9, v4}, Lp5;->c(Landroid/content/Context;Lj4;I)Lb30;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iput-object v4, v0, Lp5;->c:Lb30;

    .line 95
    .line 96
    :cond_1
    sget v4, Liw;->AppCompatTextHelper_android_drawableRight:I

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_2

    .line 103
    .line 104
    sget v4, Liw;->AppCompatTextHelper_android_drawableRight:I

    .line 105
    .line 106
    invoke-virtual {v2, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    invoke-static {v8, v9, v4}, Lp5;->c(Landroid/content/Context;Lj4;I)Lb30;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    iput-object v4, v0, Lp5;->d:Lb30;

    .line 115
    .line 116
    :cond_2
    sget v4, Liw;->AppCompatTextHelper_android_drawableBottom:I

    .line 117
    .line 118
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    sget v4, Liw;->AppCompatTextHelper_android_drawableBottom:I

    .line 125
    .line 126
    invoke-virtual {v2, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-static {v8, v9, v4}, Lp5;->c(Landroid/content/Context;Lj4;I)Lb30;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    iput-object v4, v0, Lp5;->e:Lb30;

    .line 135
    .line 136
    :cond_3
    sget v4, Liw;->AppCompatTextHelper_android_drawableStart:I

    .line 137
    .line 138
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_4

    .line 143
    .line 144
    sget v4, Liw;->AppCompatTextHelper_android_drawableStart:I

    .line 145
    .line 146
    invoke-virtual {v2, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-static {v8, v9, v4}, Lp5;->c(Landroid/content/Context;Lj4;I)Lb30;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iput-object v4, v0, Lp5;->f:Lb30;

    .line 155
    .line 156
    :cond_4
    sget v4, Liw;->AppCompatTextHelper_android_drawableEnd:I

    .line 157
    .line 158
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_5

    .line 163
    .line 164
    sget v4, Liw;->AppCompatTextHelper_android_drawableEnd:I

    .line 165
    .line 166
    invoke-virtual {v2, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-static {v8, v9, v2}, Lp5;->c(Landroid/content/Context;Lj4;I)Lb30;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iput-object v2, v0, Lp5;->g:Lb30;

    .line 175
    .line 176
    :cond_5
    invoke-virtual {v10}, Ly2;->r()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    .line 184
    .line 185
    if-eq v1, v11, :cond_9

    .line 186
    .line 187
    sget-object v4, Liw;->TextAppearance:[I

    .line 188
    .line 189
    new-instance v6, Ly2;

    .line 190
    .line 191
    invoke-virtual {v8, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-direct {v6, v8, v1}, Ly2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 196
    .line 197
    .line 198
    if-nez v2, :cond_6

    .line 199
    .line 200
    sget v4, Liw;->TextAppearance_textAllCaps:I

    .line 201
    .line 202
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_6

    .line 207
    .line 208
    sget v4, Liw;->TextAppearance_textAllCaps:I

    .line 209
    .line 210
    invoke-virtual {v1, v4, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    const/4 v14, 0x1

    .line 215
    goto :goto_0

    .line 216
    :cond_6
    move v4, v12

    .line 217
    move v14, v4

    .line 218
    :goto_0
    invoke-virtual {v0, v8, v6}, Lp5;->n(Landroid/content/Context;Ly2;)V

    .line 219
    .line 220
    .line 221
    sget v15, Liw;->TextAppearance_textLocale:I

    .line 222
    .line 223
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    if-eqz v15, :cond_7

    .line 228
    .line 229
    sget v15, Liw;->TextAppearance_textLocale:I

    .line 230
    .line 231
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    goto :goto_1

    .line 236
    :cond_7
    const/4 v15, 0x0

    .line 237
    :goto_1
    sget v13, Liw;->TextAppearance_fontVariationSettings:I

    .line 238
    .line 239
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    if-eqz v13, :cond_8

    .line 244
    .line 245
    sget v13, Liw;->TextAppearance_fontVariationSettings:I

    .line 246
    .line 247
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    goto :goto_2

    .line 252
    :cond_8
    const/4 v1, 0x0

    .line 253
    :goto_2
    invoke-virtual {v6}, Ly2;->r()V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_9
    move v4, v12

    .line 258
    move v14, v4

    .line 259
    const/4 v1, 0x0

    .line 260
    const/4 v15, 0x0

    .line 261
    :goto_3
    sget-object v6, Liw;->TextAppearance:[I

    .line 262
    .line 263
    new-instance v13, Ly2;

    .line 264
    .line 265
    invoke-virtual {v8, v3, v6, v5, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-direct {v13, v8, v6}, Ly2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 270
    .line 271
    .line 272
    if-nez v2, :cond_a

    .line 273
    .line 274
    sget v10, Liw;->TextAppearance_textAllCaps:I

    .line 275
    .line 276
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 277
    .line 278
    .line 279
    move-result v10

    .line 280
    if-eqz v10, :cond_a

    .line 281
    .line 282
    sget v4, Liw;->TextAppearance_textAllCaps:I

    .line 283
    .line 284
    invoke-virtual {v6, v4, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    const/4 v14, 0x1

    .line 289
    :cond_a
    sget v10, Liw;->TextAppearance_textLocale:I

    .line 290
    .line 291
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    if-eqz v10, :cond_b

    .line 296
    .line 297
    sget v10, Liw;->TextAppearance_textLocale:I

    .line 298
    .line 299
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v15

    .line 303
    :cond_b
    sget v10, Liw;->TextAppearance_fontVariationSettings:I

    .line 304
    .line 305
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    if-eqz v10, :cond_c

    .line 310
    .line 311
    sget v1, Liw;->TextAppearance_fontVariationSettings:I

    .line 312
    .line 313
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    :cond_c
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 318
    .line 319
    const/16 v12, 0x1c

    .line 320
    .line 321
    if-lt v10, v12, :cond_d

    .line 322
    .line 323
    sget v10, Liw;->TextAppearance_android_textSize:I

    .line 324
    .line 325
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    if-eqz v10, :cond_d

    .line 330
    .line 331
    sget v10, Liw;->TextAppearance_android_textSize:I

    .line 332
    .line 333
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-nez v6, :cond_d

    .line 338
    .line 339
    const/4 v6, 0x0

    .line 340
    const/4 v10, 0x0

    .line 341
    invoke-virtual {v7, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    .line 343
    .line 344
    :cond_d
    invoke-virtual {v0, v8, v13}, Lp5;->n(Landroid/content/Context;Ly2;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v13}, Ly2;->r()V

    .line 348
    .line 349
    .line 350
    if-nez v2, :cond_e

    .line 351
    .line 352
    if-eqz v14, :cond_e

    .line 353
    .line 354
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 355
    .line 356
    .line 357
    :cond_e
    iget-object v2, v0, Lp5;->l:Landroid/graphics/Typeface;

    .line 358
    .line 359
    if-eqz v2, :cond_10

    .line 360
    .line 361
    iget v4, v0, Lp5;->k:I

    .line 362
    .line 363
    if-ne v4, v11, :cond_f

    .line 364
    .line 365
    iget v4, v0, Lp5;->j:I

    .line 366
    .line 367
    invoke-virtual {v7, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 368
    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_f
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 372
    .line 373
    .line 374
    :cond_10
    :goto_4
    if-eqz v1, :cond_11

    .line 375
    .line 376
    invoke-static {v7, v1}, Ln5;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    :cond_11
    if-eqz v15, :cond_12

    .line 380
    .line 381
    invoke-static {v15}, Lm5;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-static {v7, v1}, Lm5;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 386
    .line 387
    .line 388
    :cond_12
    iget-object v10, v0, Lp5;->i:Ly5;

    .line 389
    .line 390
    iget-object v12, v10, Ly5;->j:Landroid/content/Context;

    .line 391
    .line 392
    sget-object v0, Liw;->AppCompatTextView:[I

    .line 393
    .line 394
    const/4 v13, 0x0

    .line 395
    invoke-virtual {v12, v3, v0, v5, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    iget-object v0, v10, Ly5;->i:Landroid/widget/TextView;

    .line 400
    .line 401
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    sget-object v2, Liw;->AppCompatTextView:[I

    .line 406
    .line 407
    const/4 v6, 0x0

    .line 408
    invoke-static/range {v0 .. v6}, Lw50;->k(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 409
    .line 410
    .line 411
    sget v0, Liw;->AppCompatTextView_autoSizeTextType:I

    .line 412
    .line 413
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-eqz v0, :cond_13

    .line 418
    .line 419
    sget v0, Liw;->AppCompatTextView_autoSizeTextType:I

    .line 420
    .line 421
    invoke-virtual {v4, v0, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    iput v0, v10, Ly5;->a:I

    .line 426
    .line 427
    :cond_13
    sget v0, Liw;->AppCompatTextView_autoSizeStepGranularity:I

    .line 428
    .line 429
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    const/high16 v1, -0x40800000

    .line 434
    .line 435
    if-eqz v0, :cond_14

    .line 436
    .line 437
    sget v0, Liw;->AppCompatTextView_autoSizeStepGranularity:I

    .line 438
    .line 439
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    goto :goto_5

    .line 444
    :cond_14
    move v0, v1

    .line 445
    :goto_5
    sget v2, Liw;->AppCompatTextView_autoSizeMinTextSize:I

    .line 446
    .line 447
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-eqz v2, :cond_15

    .line 452
    .line 453
    sget v2, Liw;->AppCompatTextView_autoSizeMinTextSize:I

    .line 454
    .line 455
    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    goto :goto_6

    .line 460
    :cond_15
    move v2, v1

    .line 461
    :goto_6
    sget v5, Liw;->AppCompatTextView_autoSizeMaxTextSize:I

    .line 462
    .line 463
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    if-eqz v5, :cond_16

    .line 468
    .line 469
    sget v5, Liw;->AppCompatTextView_autoSizeMaxTextSize:I

    .line 470
    .line 471
    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 472
    .line 473
    .line 474
    move-result v5

    .line 475
    goto :goto_7

    .line 476
    :cond_16
    move v5, v1

    .line 477
    :goto_7
    sget v6, Liw;->AppCompatTextView_autoSizePresetSizes:I

    .line 478
    .line 479
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 480
    .line 481
    .line 482
    move-result v6

    .line 483
    if-eqz v6, :cond_19

    .line 484
    .line 485
    sget v6, Liw;->AppCompatTextView_autoSizePresetSizes:I

    .line 486
    .line 487
    const/4 v13, 0x0

    .line 488
    invoke-virtual {v4, v6, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    if-lez v6, :cond_19

    .line 493
    .line 494
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 495
    .line 496
    .line 497
    move-result-object v13

    .line 498
    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    .line 503
    .line 504
    .line 505
    move-result v13

    .line 506
    new-array v14, v13, [I

    .line 507
    .line 508
    if-lez v13, :cond_18

    .line 509
    .line 510
    const/4 v15, 0x0

    .line 511
    :goto_8
    if-ge v15, v13, :cond_17

    .line 512
    .line 513
    invoke-virtual {v6, v15, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 514
    .line 515
    .line 516
    move-result v18

    .line 517
    aput v18, v14, v15

    .line 518
    .line 519
    add-int/lit8 v15, v15, 0x1

    .line 520
    .line 521
    goto :goto_8

    .line 522
    :cond_17
    invoke-static {v14}, Ly5;->b([I)[I

    .line 523
    .line 524
    .line 525
    move-result-object v13

    .line 526
    iput-object v13, v10, Ly5;->f:[I

    .line 527
    .line 528
    invoke-virtual {v10}, Ly5;->h()Z

    .line 529
    .line 530
    .line 531
    :cond_18
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 532
    .line 533
    .line 534
    :cond_19
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v10}, Ly5;->i()Z

    .line 538
    .line 539
    .line 540
    move-result v4

    .line 541
    const/4 v6, 0x2

    .line 542
    if-eqz v4, :cond_1e

    .line 543
    .line 544
    iget v4, v10, Ly5;->a:I

    .line 545
    .line 546
    const/4 v13, 0x1

    .line 547
    if-ne v4, v13, :cond_1f

    .line 548
    .line 549
    iget-boolean v4, v10, Ly5;->g:Z

    .line 550
    .line 551
    if-nez v4, :cond_1d

    .line 552
    .line 553
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    cmpl-float v12, v2, v1

    .line 562
    .line 563
    if-nez v12, :cond_1a

    .line 564
    .line 565
    const/high16 v2, 0x41400000

    .line 566
    .line 567
    invoke-static {v6, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    :cond_1a
    cmpl-float v12, v5, v1

    .line 572
    .line 573
    if-nez v12, :cond_1b

    .line 574
    .line 575
    const/high16 v5, 0x42e00000

    .line 576
    .line 577
    invoke-static {v6, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 578
    .line 579
    .line 580
    move-result v5

    .line 581
    :cond_1b
    cmpl-float v4, v0, v1

    .line 582
    .line 583
    if-nez v4, :cond_1c

    .line 584
    .line 585
    const/high16 v0, 0x3f800000

    .line 586
    .line 587
    :cond_1c
    invoke-virtual {v10, v2, v5, v0}, Ly5;->j(FFF)V

    .line 588
    .line 589
    .line 590
    :cond_1d
    invoke-virtual {v10}, Ly5;->g()Z

    .line 591
    .line 592
    .line 593
    goto :goto_9

    .line 594
    :cond_1e
    const/4 v13, 0x0

    .line 595
    iput v13, v10, Ly5;->a:I

    .line 596
    .line 597
    :cond_1f
    :goto_9
    sget-boolean v0, Lu60;->c:Z

    .line 598
    .line 599
    if-eqz v0, :cond_21

    .line 600
    .line 601
    iget v0, v10, Ly5;->a:I

    .line 602
    .line 603
    if-eqz v0, :cond_21

    .line 604
    .line 605
    iget-object v0, v10, Ly5;->f:[I

    .line 606
    .line 607
    array-length v2, v0

    .line 608
    if-lez v2, :cond_21

    .line 609
    .line 610
    invoke-static {v7}, Ln5;->a(Landroid/widget/TextView;)I

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    int-to-float v2, v2

    .line 615
    cmpl-float v2, v2, v1

    .line 616
    .line 617
    if-eqz v2, :cond_20

    .line 618
    .line 619
    iget v0, v10, Ly5;->d:F

    .line 620
    .line 621
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    iget v2, v10, Ly5;->e:F

    .line 626
    .line 627
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    iget v4, v10, Ly5;->c:F

    .line 632
    .line 633
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 634
    .line 635
    .line 636
    move-result v4

    .line 637
    const/4 v13, 0x0

    .line 638
    invoke-static {v7, v0, v2, v4, v13}, Ln5;->b(Landroid/widget/TextView;IIII)V

    .line 639
    .line 640
    .line 641
    goto :goto_a

    .line 642
    :cond_20
    const/4 v13, 0x0

    .line 643
    invoke-static {v7, v0, v13}, Ln5;->c(Landroid/widget/TextView;[II)V

    .line 644
    .line 645
    .line 646
    :cond_21
    :goto_a
    sget-object v0, Liw;->AppCompatTextView:[I

    .line 647
    .line 648
    invoke-virtual {v8, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    sget v2, Liw;->AppCompatTextView_drawableLeftCompat:I

    .line 653
    .line 654
    invoke-virtual {v0, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-eq v2, v11, :cond_22

    .line 659
    .line 660
    invoke-virtual {v9, v8, v2}, Lj4;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    goto :goto_b

    .line 665
    :cond_22
    const/4 v2, 0x0

    .line 666
    :goto_b
    sget v3, Liw;->AppCompatTextView_drawableTopCompat:I

    .line 667
    .line 668
    invoke-virtual {v0, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    if-eq v3, v11, :cond_23

    .line 673
    .line 674
    invoke-virtual {v9, v8, v3}, Lj4;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    goto :goto_c

    .line 679
    :cond_23
    const/4 v3, 0x0

    .line 680
    :goto_c
    sget v4, Liw;->AppCompatTextView_drawableRightCompat:I

    .line 681
    .line 682
    invoke-virtual {v0, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    if-eq v4, v11, :cond_24

    .line 687
    .line 688
    invoke-virtual {v9, v8, v4}, Lj4;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 689
    .line 690
    .line 691
    move-result-object v4

    .line 692
    goto :goto_d

    .line 693
    :cond_24
    const/4 v4, 0x0

    .line 694
    :goto_d
    sget v5, Liw;->AppCompatTextView_drawableBottomCompat:I

    .line 695
    .line 696
    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 697
    .line 698
    .line 699
    move-result v5

    .line 700
    if-eq v5, v11, :cond_25

    .line 701
    .line 702
    invoke-virtual {v9, v8, v5}, Lj4;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    goto :goto_e

    .line 707
    :cond_25
    const/4 v5, 0x0

    .line 708
    :goto_e
    sget v10, Liw;->AppCompatTextView_drawableStartCompat:I

    .line 709
    .line 710
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 711
    .line 712
    .line 713
    move-result v10

    .line 714
    if-eq v10, v11, :cond_26

    .line 715
    .line 716
    invoke-virtual {v9, v8, v10}, Lj4;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 717
    .line 718
    .line 719
    move-result-object v10

    .line 720
    goto :goto_f

    .line 721
    :cond_26
    const/4 v10, 0x0

    .line 722
    :goto_f
    sget v12, Liw;->AppCompatTextView_drawableEndCompat:I

    .line 723
    .line 724
    invoke-virtual {v0, v12, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 725
    .line 726
    .line 727
    move-result v12

    .line 728
    if-eq v12, v11, :cond_27

    .line 729
    .line 730
    invoke-virtual {v9, v8, v12}, Lj4;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 731
    .line 732
    .line 733
    move-result-object v9

    .line 734
    goto :goto_10

    .line 735
    :cond_27
    const/4 v9, 0x0

    .line 736
    :goto_10
    const/4 v12, 0x3

    .line 737
    if-nez v10, :cond_32

    .line 738
    .line 739
    if-eqz v9, :cond_28

    .line 740
    .line 741
    goto :goto_18

    .line 742
    :cond_28
    if-nez v2, :cond_29

    .line 743
    .line 744
    if-nez v3, :cond_29

    .line 745
    .line 746
    if-nez v4, :cond_29

    .line 747
    .line 748
    if-eqz v5, :cond_37

    .line 749
    .line 750
    :cond_29
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 751
    .line 752
    .line 753
    move-result-object v9

    .line 754
    const/16 v17, 0x0

    .line 755
    .line 756
    aget-object v10, v9, v17

    .line 757
    .line 758
    if-nez v10, :cond_2f

    .line 759
    .line 760
    aget-object v13, v9, v6

    .line 761
    .line 762
    if-eqz v13, :cond_2a

    .line 763
    .line 764
    goto :goto_15

    .line 765
    :cond_2a
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 766
    .line 767
    .line 768
    move-result-object v9

    .line 769
    if-eqz v2, :cond_2b

    .line 770
    .line 771
    goto :goto_11

    .line 772
    :cond_2b
    aget-object v2, v9, v17

    .line 773
    .line 774
    :goto_11
    if-eqz v3, :cond_2c

    .line 775
    .line 776
    goto :goto_12

    .line 777
    :cond_2c
    const/16 v16, 0x1

    .line 778
    .line 779
    aget-object v3, v9, v16

    .line 780
    .line 781
    :goto_12
    if-eqz v4, :cond_2d

    .line 782
    .line 783
    goto :goto_13

    .line 784
    :cond_2d
    aget-object v4, v9, v6

    .line 785
    .line 786
    :goto_13
    if-eqz v5, :cond_2e

    .line 787
    .line 788
    goto :goto_14

    .line 789
    :cond_2e
    aget-object v5, v9, v12

    .line 790
    .line 791
    :goto_14
    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 792
    .line 793
    .line 794
    goto :goto_1d

    .line 795
    :cond_2f
    :goto_15
    if-eqz v3, :cond_30

    .line 796
    .line 797
    goto :goto_16

    .line 798
    :cond_30
    const/16 v16, 0x1

    .line 799
    .line 800
    aget-object v3, v9, v16

    .line 801
    .line 802
    :goto_16
    if-eqz v5, :cond_31

    .line 803
    .line 804
    goto :goto_17

    .line 805
    :cond_31
    aget-object v5, v9, v12

    .line 806
    .line 807
    :goto_17
    aget-object v2, v9, v6

    .line 808
    .line 809
    invoke-virtual {v7, v10, v3, v2, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 810
    .line 811
    .line 812
    goto :goto_1d

    .line 813
    :cond_32
    :goto_18
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    if-eqz v10, :cond_33

    .line 818
    .line 819
    goto :goto_19

    .line 820
    :cond_33
    const/16 v17, 0x0

    .line 821
    .line 822
    aget-object v10, v2, v17

    .line 823
    .line 824
    :goto_19
    if-eqz v3, :cond_34

    .line 825
    .line 826
    goto :goto_1a

    .line 827
    :cond_34
    const/16 v16, 0x1

    .line 828
    .line 829
    aget-object v3, v2, v16

    .line 830
    .line 831
    :goto_1a
    if-eqz v9, :cond_35

    .line 832
    .line 833
    goto :goto_1b

    .line 834
    :cond_35
    aget-object v9, v2, v6

    .line 835
    .line 836
    :goto_1b
    if-eqz v5, :cond_36

    .line 837
    .line 838
    goto :goto_1c

    .line 839
    :cond_36
    aget-object v5, v2, v12

    .line 840
    .line 841
    :goto_1c
    invoke-virtual {v7, v10, v3, v9, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 842
    .line 843
    .line 844
    :cond_37
    :goto_1d
    sget v2, Liw;->AppCompatTextView_drawableTint:I

    .line 845
    .line 846
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 847
    .line 848
    .line 849
    move-result v2

    .line 850
    if-eqz v2, :cond_39

    .line 851
    .line 852
    sget v2, Liw;->AppCompatTextView_drawableTint:I

    .line 853
    .line 854
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 855
    .line 856
    .line 857
    move-result v3

    .line 858
    if-eqz v3, :cond_38

    .line 859
    .line 860
    const/4 v13, 0x0

    .line 861
    invoke-virtual {v0, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 862
    .line 863
    .line 864
    move-result v3

    .line 865
    if-eqz v3, :cond_38

    .line 866
    .line 867
    invoke-static {v8, v3}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 868
    .line 869
    .line 870
    move-result-object v3

    .line 871
    if-eqz v3, :cond_38

    .line 872
    .line 873
    goto :goto_1e

    .line 874
    :cond_38
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 875
    .line 876
    .line 877
    move-result-object v3

    .line 878
    :goto_1e
    invoke-static {v7, v3}, Ll20;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 879
    .line 880
    .line 881
    :cond_39
    sget v2, Liw;->AppCompatTextView_drawableTintMode:I

    .line 882
    .line 883
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 884
    .line 885
    .line 886
    move-result v2

    .line 887
    if-eqz v2, :cond_3a

    .line 888
    .line 889
    sget v2, Liw;->AppCompatTextView_drawableTintMode:I

    .line 890
    .line 891
    invoke-virtual {v0, v2, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 892
    .line 893
    .line 894
    move-result v2

    .line 895
    const/4 v3, 0x0

    .line 896
    invoke-static {v2, v3}, Lwf;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    invoke-static {v7, v2}, Ll20;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 901
    .line 902
    .line 903
    :cond_3a
    sget v2, Liw;->AppCompatTextView_firstBaselineToTopHeight:I

    .line 904
    .line 905
    invoke-virtual {v0, v2, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    sget v3, Liw;->AppCompatTextView_lastBaselineToBottomHeight:I

    .line 910
    .line 911
    invoke-virtual {v0, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 912
    .line 913
    .line 914
    move-result v3

    .line 915
    sget v4, Liw;->AppCompatTextView_lineHeight:I

    .line 916
    .line 917
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 918
    .line 919
    .line 920
    move-result v4

    .line 921
    if-eqz v4, :cond_3c

    .line 922
    .line 923
    sget v4, Liw;->AppCompatTextView_lineHeight:I

    .line 924
    .line 925
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 926
    .line 927
    .line 928
    move-result-object v4

    .line 929
    if-eqz v4, :cond_3b

    .line 930
    .line 931
    iget v5, v4, Landroid/util/TypedValue;->type:I

    .line 932
    .line 933
    const/4 v6, 0x5

    .line 934
    if-ne v5, v6, :cond_3b

    .line 935
    .line 936
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 937
    .line 938
    and-int/lit8 v5, v4, 0xf

    .line 939
    .line 940
    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 941
    .line 942
    .line 943
    move-result v4

    .line 944
    goto :goto_20

    .line 945
    :cond_3b
    sget v4, Liw;->AppCompatTextView_lineHeight:I

    .line 946
    .line 947
    invoke-virtual {v0, v4, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 948
    .line 949
    .line 950
    move-result v4

    .line 951
    int-to-float v4, v4

    .line 952
    :goto_1f
    move v5, v11

    .line 953
    goto :goto_20

    .line 954
    :cond_3c
    move v4, v1

    .line 955
    goto :goto_1f

    .line 956
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 957
    .line 958
    .line 959
    if-eq v2, v11, :cond_3d

    .line 960
    .line 961
    invoke-static {v7, v2}, Lyt;->x(Landroid/widget/TextView;I)V

    .line 962
    .line 963
    .line 964
    :cond_3d
    if-eq v3, v11, :cond_3e

    .line 965
    .line 966
    invoke-static {v7, v3}, Lyt;->y(Landroid/widget/TextView;I)V

    .line 967
    .line 968
    .line 969
    :cond_3e
    cmpl-float v0, v4, v1

    .line 970
    .line 971
    if-eqz v0, :cond_41

    .line 972
    .line 973
    if-ne v5, v11, :cond_3f

    .line 974
    .line 975
    float-to-int v0, v4

    .line 976
    invoke-static {v7, v0}, Lyt;->z(Landroid/widget/TextView;I)V

    .line 977
    .line 978
    .line 979
    return-void

    .line 980
    :cond_3f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 981
    .line 982
    const/16 v1, 0x22

    .line 983
    .line 984
    if-lt v0, v1, :cond_40

    .line 985
    .line 986
    invoke-static {v7, v5, v4}, Lo20;->a(Landroid/widget/TextView;IF)V

    .line 987
    .line 988
    .line 989
    return-void

    .line 990
    :cond_40
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    invoke-static {v5, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 1003
    .line 1004
    .line 1005
    move-result v0

    .line 1006
    invoke-static {v7, v0}, Lyt;->z(Landroid/widget/TextView;I)V

    .line 1007
    .line 1008
    .line 1009
    :cond_41
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 5

    .line 1
    sget-object v0, Liw;->TextAppearance:[I

    .line 2
    .line 3
    new-instance v1, Ly2;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v1, p1, p2}, Ly2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    sget v0, Liw;->TextAppearance_textAllCaps:I

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    iget-object v3, p0, Lp5;->a:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget v0, Liw;->TextAppearance_textAllCaps:I

    .line 24
    .line 25
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget v0, Liw;->TextAppearance_android_textSize:I

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    sget v0, Liw;->TextAppearance_android_textSize:I

    .line 41
    .line 42
    const/4 v4, -0x1

    .line 43
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {v3, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0, p1, v1}, Lp5;->n(Landroid/content/Context;Ly2;)V

    .line 54
    .line 55
    .line 56
    sget p1, Liw;->TextAppearance_fontVariationSettings:I

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    sget p1, Liw;->TextAppearance_fontVariationSettings:I

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-static {v3, p1}, Ln5;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {v1}, Ly2;->r()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget p0, p0, Lp5;->j:I

    .line 83
    .line 84
    invoke-virtual {v3, p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
.end method

.method public final i(IIII)V
    .locals 1

    .line 1
    iget-object p0, p0, Lp5;->i:Ly5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly5;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ly5;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Ly5;->j(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ly5;->g()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Ly5;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final j([II)V
    .locals 5

    .line 1
    iget-object p0, p0, Lp5;->i:Ly5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly5;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-lez v0, :cond_3

    .line 12
    .line 13
    new-array v2, v0, [I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v3, p0, Ly5;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_0
    if-ge v1, v0, :cond_1

    .line 33
    .line 34
    aget v4, p1, v1

    .line 35
    .line 36
    int-to-float v4, v4

    .line 37
    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    aput v4, v2, v1

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v2}, Ly5;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Ly5;->f:[I

    .line 55
    .line 56
    invoke-virtual {p0}, Ly5;->h()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "None of the preset sizes is valid: "

    .line 72
    .line 73
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_3
    iput-boolean v1, p0, Ly5;->g:Z

    .line 88
    .line 89
    :goto_2
    invoke-virtual {p0}, Ly5;->g()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Ly5;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final k(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lp5;->i:Ly5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly5;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Ly5;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/high16 v0, 0x41400000

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/high16 v2, 0x42e00000

    .line 32
    .line 33
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v1, 0x3f800000

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1, v1}, Ly5;->j(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ly5;->g()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Ly5;->a()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const-string p0, "Unknown auto-size text type: "

    .line 53
    .line 54
    invoke-static {p0, p1}, Lg9;->f(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    iput p1, p0, Ly5;->a:I

    .line 60
    .line 61
    const/high16 v0, -0x40800000

    .line 62
    .line 63
    iput v0, p0, Ly5;->d:F

    .line 64
    .line 65
    iput v0, p0, Ly5;->e:F

    .line 66
    .line 67
    iput v0, p0, Ly5;->c:F

    .line 68
    .line 69
    new-array v0, p1, [I

    .line 70
    .line 71
    iput-object v0, p0, Ly5;->f:[I

    .line 72
    .line 73
    iput-boolean p1, p0, Ly5;->b:Z

    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp5;->h:Lb30;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb30;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lp5;->h:Lb30;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lp5;->h:Lb30;

    .line 13
    .line 14
    iput-object p1, v0, Lb30;->a:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Lb30;->d:Z

    .line 22
    .line 23
    iput-object v0, p0, Lp5;->b:Lb30;

    .line 24
    .line 25
    iput-object v0, p0, Lp5;->c:Lb30;

    .line 26
    .line 27
    iput-object v0, p0, Lp5;->d:Lb30;

    .line 28
    .line 29
    iput-object v0, p0, Lp5;->e:Lb30;

    .line 30
    .line 31
    iput-object v0, p0, Lp5;->f:Lb30;

    .line 32
    .line 33
    iput-object v0, p0, Lp5;->g:Lb30;

    .line 34
    .line 35
    return-void
.end method

.method public final m(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp5;->h:Lb30;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb30;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lp5;->h:Lb30;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lp5;->h:Lb30;

    .line 13
    .line 14
    iput-object p1, v0, Lb30;->b:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Lb30;->c:Z

    .line 22
    .line 23
    iput-object v0, p0, Lp5;->b:Lb30;

    .line 24
    .line 25
    iput-object v0, p0, Lp5;->c:Lb30;

    .line 26
    .line 27
    iput-object v0, p0, Lp5;->d:Lb30;

    .line 28
    .line 29
    iput-object v0, p0, Lp5;->e:Lb30;

    .line 30
    .line 31
    iput-object v0, p0, Lp5;->f:Lb30;

    .line 32
    .line 33
    iput-object v0, p0, Lp5;->g:Lb30;

    .line 34
    .line 35
    return-void
.end method

.method public final n(Landroid/content/Context;Ly2;)V
    .locals 11

    .line 1
    sget v0, Liw;->TextAppearance_android_textStyle:I

    .line 2
    .line 3
    iget v1, p0, Lp5;->j:I

    .line 4
    .line 5
    iget-object v2, p2, Ly2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Landroid/content/res/TypedArray;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lp5;->j:I

    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v3, -0x1

    .line 19
    const/16 v4, 0x1c

    .line 20
    .line 21
    if-lt v0, v4, :cond_0

    .line 22
    .line 23
    sget v5, Liw;->TextAppearance_android_textFontWeight:I

    .line 24
    .line 25
    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iput v5, p0, Lp5;->k:I

    .line 30
    .line 31
    if-eq v5, v3, :cond_0

    .line 32
    .line 33
    iget v5, p0, Lp5;->j:I

    .line 34
    .line 35
    and-int/2addr v5, v1

    .line 36
    iput v5, p0, Lp5;->j:I

    .line 37
    .line 38
    :cond_0
    sget v5, Liw;->TextAppearance_android_fontFamily:I

    .line 39
    .line 40
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    if-nez v5, :cond_5

    .line 47
    .line 48
    sget v5, Liw;->TextAppearance_fontFamily:I

    .line 49
    .line 50
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget p1, Liw;->TextAppearance_android_typeface:I

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_e

    .line 64
    .line 65
    iput-boolean v7, p0, Lp5;->m:Z

    .line 66
    .line 67
    sget p1, Liw;->TextAppearance_android_typeface:I

    .line 68
    .line 69
    invoke-virtual {v2, p1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eq p1, v6, :cond_4

    .line 74
    .line 75
    if-eq p1, v1, :cond_3

    .line 76
    .line 77
    const/4 p2, 0x3

    .line 78
    if-eq p1, p2, :cond_2

    .line 79
    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 83
    .line 84
    iput-object p1, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 88
    .line 89
    iput-object p1, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 90
    .line 91
    return-void

    .line 92
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 93
    .line 94
    iput-object p1, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 95
    .line 96
    return-void

    .line 97
    :cond_5
    :goto_0
    const/4 v5, 0x0

    .line 98
    iput-object v5, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 99
    .line 100
    sget v5, Liw;->TextAppearance_fontFamily:I

    .line 101
    .line 102
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_6

    .line 107
    .line 108
    sget v5, Liw;->TextAppearance_fontFamily:I

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    sget v5, Liw;->TextAppearance_android_fontFamily:I

    .line 112
    .line 113
    :goto_1
    iget v8, p0, Lp5;->k:I

    .line 114
    .line 115
    iget v9, p0, Lp5;->j:I

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_b

    .line 122
    .line 123
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 124
    .line 125
    iget-object v10, p0, Lp5;->a:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance v10, Lk5;

    .line 131
    .line 132
    invoke-direct {v10, p0, v8, v9, p1}, Lk5;-><init>(Lp5;IILjava/lang/ref/WeakReference;)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    iget p1, p0, Lp5;->j:I

    .line 136
    .line 137
    invoke-virtual {p2, v5, p1, v10}, Ly2;->i(IILk5;)Landroid/graphics/Typeface;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    if-lt v0, v4, :cond_8

    .line 144
    .line 145
    iget p2, p0, Lp5;->k:I

    .line 146
    .line 147
    if-eq p2, v3, :cond_8

    .line 148
    .line 149
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget p2, p0, Lp5;->k:I

    .line 154
    .line 155
    iget v0, p0, Lp5;->j:I

    .line 156
    .line 157
    and-int/2addr v0, v1

    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    move v0, v6

    .line 161
    goto :goto_2

    .line 162
    :cond_7
    move v0, v7

    .line 163
    :goto_2
    invoke-static {p1, p2, v0}, Lo5;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iput-object p1, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    iput-object p1, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 171
    .line 172
    :cond_9
    :goto_3
    iget-object p1, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 173
    .line 174
    if-nez p1, :cond_a

    .line 175
    .line 176
    move p1, v6

    .line 177
    goto :goto_4

    .line 178
    :cond_a
    move p1, v7

    .line 179
    :goto_4
    iput-boolean p1, p0, Lp5;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    :catch_0
    :cond_b
    iget-object p1, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 182
    .line 183
    if-nez p1, :cond_e

    .line 184
    .line 185
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_e

    .line 190
    .line 191
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 192
    .line 193
    if-lt p2, v4, :cond_d

    .line 194
    .line 195
    iget p2, p0, Lp5;->k:I

    .line 196
    .line 197
    if-eq p2, v3, :cond_d

    .line 198
    .line 199
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iget p2, p0, Lp5;->k:I

    .line 204
    .line 205
    iget v0, p0, Lp5;->j:I

    .line 206
    .line 207
    and-int/2addr v0, v1

    .line 208
    if-eqz v0, :cond_c

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_c
    move v6, v7

    .line 212
    :goto_5
    invoke-static {p1, p2, v6}, Lo5;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_d
    iget p2, p0, Lp5;->j:I

    .line 220
    .line 221
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Lp5;->l:Landroid/graphics/Typeface;

    .line 226
    .line 227
    :cond_e
    :goto_6
    return-void
.end method
