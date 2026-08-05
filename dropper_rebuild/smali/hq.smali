.class public final Lhq;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lqz;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Lxq;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Landroid/graphics/drawable/RippleDrawable;

.field public t:I

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lqz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lhq;->n:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lhq;->o:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lhq;->p:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lhq;->r:Z

    .line 13
    .line 14
    iput-object p1, p0, Lhq;->a:Lcom/google/android/material/button/MaterialButton;

    .line 15
    .line 16
    iput-object p2, p0, Lhq;->b:Lqz;

    .line 17
    .line 18
    return-void
.end method

.method public final a()Lb00;
    .locals 3

    .line 1
    iget-object v0, p0, Lhq;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lhq;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object p0, p0, Lhq;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-le v0, v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lb00;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lb00;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public final b(Z)Lxq;
    .locals 1

    .line 1
    iget-object v0, p0, Lhq;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lhq;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 25
    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lxq;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public final c(Lqz;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lhq;->b:Lqz;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lhq;->b(Z)Lxq;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lhq;->b(Z)Lxq;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lxq;->setShapeAppearanceModel(Lqz;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lhq;->b(Z)Lxq;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lhq;->b(Z)Lxq;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lxq;->setShapeAppearanceModel(Lqz;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lhq;->a()Lb00;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lhq;->a()Lb00;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0, p1}, Lb00;->setShapeAppearanceModel(Lqz;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public final d(II)V
    .locals 8

    .line 1
    sget-object v0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lhq;->a:Lcom/google/android/material/button/MaterialButton;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iget v5, p0, Lhq;->e:I

    .line 22
    .line 23
    iget v6, p0, Lhq;->f:I

    .line 24
    .line 25
    iput p2, p0, Lhq;->f:I

    .line 26
    .line 27
    iput p1, p0, Lhq;->e:I

    .line 28
    .line 29
    iget-boolean v7, p0, Lhq;->o:Z

    .line 30
    .line 31
    if-nez v7, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lhq;->e()V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/2addr v2, p1

    .line 37
    sub-int/2addr v2, v5

    .line 38
    add-int/2addr v4, p2

    .line 39
    sub-int/2addr v4, v6

    .line 40
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final e()V
    .locals 12

    .line 1
    new-instance v0, Lxq;

    .line 2
    .line 3
    iget-object v1, p0, Lhq;->b:Lqz;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lxq;-><init>(Lqz;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lhq;->a:Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Lxq;->h(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lhq;->j:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    invoke-static {v0, v2}, Lqf;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lhq;->i:Landroid/graphics/PorterDuff$Mode;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {v0, v2}, Lqf;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget v2, p0, Lhq;->h:I

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    iget-object v3, p0, Lhq;->k:Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    iget-object v4, v0, Lxq;->a:Lwq;

    .line 35
    .line 36
    iput v2, v4, Lwq;->j:F

    .line 37
    .line 38
    invoke-virtual {v0}, Lxq;->invalidateSelf()V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lxq;->a:Lwq;

    .line 42
    .line 43
    iget-object v4, v2, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    if-eq v4, v3, :cond_1

    .line 46
    .line 47
    iput-object v3, v2, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Lxq;->onStateChange([I)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    new-instance v2, Lxq;

    .line 57
    .line 58
    iget-object v3, p0, Lhq;->b:Lqz;

    .line 59
    .line 60
    invoke-direct {v2, v3}, Lxq;-><init>(Lqz;)V

    .line 61
    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-virtual {v2, v3}, Lxq;->setTint(I)V

    .line 65
    .line 66
    .line 67
    iget v4, p0, Lhq;->h:I

    .line 68
    .line 69
    int-to-float v4, v4

    .line 70
    iget-boolean v5, p0, Lhq;->n:Z

    .line 71
    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    sget v5, Ltu;->colorSurface:I

    .line 75
    .line 76
    invoke-static {v1, v5}, Lvd;->p(Landroid/view/View;I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v5, v3

    .line 82
    :goto_0
    iget-object v6, v2, Lxq;->a:Lwq;

    .line 83
    .line 84
    iput v4, v6, Lwq;->j:F

    .line 85
    .line 86
    invoke-virtual {v2}, Lxq;->invalidateSelf()V

    .line 87
    .line 88
    .line 89
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object v5, v2, Lxq;->a:Lwq;

    .line 94
    .line 95
    iget-object v6, v5, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 96
    .line 97
    if-eq v6, v4, :cond_3

    .line 98
    .line 99
    iput-object v4, v5, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v2, v4}, Lxq;->onStateChange([I)Z

    .line 106
    .line 107
    .line 108
    :cond_3
    new-instance v4, Lxq;

    .line 109
    .line 110
    iget-object v5, p0, Lhq;->b:Lqz;

    .line 111
    .line 112
    invoke-direct {v4, v5}, Lxq;-><init>(Lqz;)V

    .line 113
    .line 114
    .line 115
    iput-object v4, p0, Lhq;->m:Lxq;

    .line 116
    .line 117
    const/4 v5, -0x1

    .line 118
    invoke-static {v4, v5}, Lqf;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 119
    .line 120
    .line 121
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    .line 122
    .line 123
    iget-object v5, p0, Lhq;->l:Landroid/content/res/ColorStateList;

    .line 124
    .line 125
    invoke-static {v5}, Ld40;->M(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    .line 130
    .line 131
    const/4 v6, 0x2

    .line 132
    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    aput-object v2, v6, v3

    .line 135
    .line 136
    const/4 v2, 0x1

    .line 137
    aput-object v0, v6, v2

    .line 138
    .line 139
    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    .line 143
    .line 144
    iget v8, p0, Lhq;->c:I

    .line 145
    .line 146
    iget v9, p0, Lhq;->e:I

    .line 147
    .line 148
    iget v10, p0, Lhq;->d:I

    .line 149
    .line 150
    iget v11, p0, Lhq;->f:I

    .line 151
    .line 152
    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lhq;->m:Lxq;

    .line 156
    .line 157
    invoke-direct {v4, v5, v6, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 158
    .line 159
    .line 160
    iput-object v4, p0, Lhq;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 161
    .line 162
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v3}, Lhq;->b(Z)Lxq;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    .line 171
    iget p0, p0, Lhq;->t:I

    .line 172
    .line 173
    int-to-float p0, p0

    .line 174
    invoke-virtual {v0, p0}, Lxq;->i(F)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 182
    .line 183
    .line 184
    :cond_4
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lhq;->b(Z)Lxq;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v2}, Lhq;->b(Z)Lxq;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget v3, p0, Lhq;->h:I

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    iget-object v4, p0, Lhq;->k:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    iget-object v5, v1, Lxq;->a:Lwq;

    .line 19
    .line 20
    iput v3, v5, Lwq;->j:F

    .line 21
    .line 22
    invoke-virtual {v1}, Lxq;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Lxq;->a:Lwq;

    .line 26
    .line 27
    iget-object v5, v3, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    if-eq v5, v4, :cond_0

    .line 30
    .line 31
    iput-object v4, v3, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Lxq;->onStateChange([I)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget v1, p0, Lhq;->h:I

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    iget-boolean v3, p0, Lhq;->n:Z

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lhq;->a:Lcom/google/android/material/button/MaterialButton;

    .line 50
    .line 51
    sget v0, Ltu;->colorSurface:I

    .line 52
    .line 53
    invoke-static {p0, v0}, Lvd;->p(Landroid/view/View;I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :cond_1
    iget-object p0, v2, Lxq;->a:Lwq;

    .line 58
    .line 59
    iput v1, p0, Lwq;->j:F

    .line 60
    .line 61
    invoke-virtual {v2}, Lxq;->invalidateSelf()V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object v0, v2, Lxq;->a:Lwq;

    .line 69
    .line 70
    iget-object v1, v0, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 71
    .line 72
    if-eq v1, p0, :cond_2

    .line 73
    .line 74
    iput-object p0, v0, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v2, p0}, Lxq;->onStateChange([I)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method
