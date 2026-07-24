.class public Lcom/google/android/material/carousel/CarouselLayoutManager;
.super Lww;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lgx;


# instance fields
.field public final p:Lng;

.field public q:Ln8;

.field public final r:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    new-instance v0, Lng;

    invoke-direct {v0}, Lng;-><init>()V

    .line 57
    invoke-direct {p0}, Lww;-><init>()V

    .line 58
    new-instance v1, Lm8;

    invoke-direct {v1}, Lm8;-><init>()V

    .line 59
    new-instance v1, Lk8;

    invoke-direct {v1, p0}, Lk8;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:Landroid/view/View$OnLayoutChangeListener;

    .line 60
    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:Lng;

    .line 61
    invoke-virtual {p0}, Lww;->l0()V

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->C0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lww;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lm8;

    .line 5
    .line 6
    invoke-direct {p3}, Lm8;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p3, Lk8;

    .line 10
    .line 11
    invoke-direct {p3, p0}, Lk8;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    .line 12
    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:Landroid/view/View$OnLayoutChangeListener;

    .line 15
    .line 16
    new-instance p3, Lng;

    .line 17
    .line 18
    invoke-direct {p3}, Lng;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:Lng;

    .line 22
    .line 23
    invoke-virtual {p0}, Lww;->l0()V

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    sget-object p3, Lhw;->Carousel:[I

    .line 29
    .line 30
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget p2, Lhw;->Carousel_carousel_alignment:I

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lww;->l0()V

    .line 41
    .line 42
    .line 43
    sget p2, Lhw;->RecyclerView_android_orientation:I

    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->C0(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:Ln8;

    .line 2
    .line 3
    iget p0, p0, Ln8;->a:I

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final B0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->A0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lww;->C()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final C0(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "invalid orientation:"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lg9;->f(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Lww;->c(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:Ln8;

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    iget v1, v1, Ln8;->a:I

    .line 22
    .line 23
    if-eq p1, v1, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    return-void

    .line 27
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 28
    .line 29
    if-ne p1, v0, :cond_4

    .line 30
    .line 31
    new-instance p1, Ln8;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p1, p0, v0}, Ln8;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_4
    const-string p0, "invalid orientation"

    .line 39
    .line 40
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_5
    new-instance p1, Ln8;

    .line 45
    .line 46
    invoke-direct {p1, p0, v0}, Ln8;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;I)V

    .line 47
    .line 48
    .line 49
    :goto_2
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:Ln8;

    .line 50
    .line 51
    invoke-virtual {p0}, Lww;->l0()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final L()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final Q(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:Lng;

    .line 6
    .line 7
    iget v2, v1, Lng;->a:F

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    cmpl-float v4, v2, v3

    .line 11
    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget v4, Lzu;->m3_carousel_small_item_size_min:I

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    :goto_0
    iput v2, v1, Lng;->a:F

    .line 26
    .line 27
    iget v2, v1, Lng;->b:F

    .line 28
    .line 29
    cmpl-float v3, v2, v3

    .line 30
    .line 31
    if-lez v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget v2, Lzu;->m3_carousel_small_item_size_max:I

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    :goto_1
    iput v2, v1, Lng;->b:F

    .line 45
    .line 46
    invoke-virtual {p0}, Lww;->l0()V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:Landroid/view/View$OnLayoutChangeListener;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final R(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:Landroid/view/View$OnLayoutChangeListener;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final S(Landroid/view/View;ILcx;Lhx;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 p4, 0x0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:Ln8;

    .line 11
    .line 12
    iget p3, p3, Ln8;->a:I

    .line 13
    .line 14
    const/high16 v0, -0x80000000

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq p2, v2, :cond_5

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-eq p2, v3, :cond_3

    .line 22
    .line 23
    const/16 v3, 0x11

    .line 24
    .line 25
    if-eq p2, v3, :cond_7

    .line 26
    .line 27
    const/16 v3, 0x21

    .line 28
    .line 29
    if-eq p2, v3, :cond_6

    .line 30
    .line 31
    const/16 v3, 0x42

    .line 32
    .line 33
    if-eq p2, v3, :cond_4

    .line 34
    .line 35
    const/16 v3, 0x82

    .line 36
    .line 37
    if-eq p2, v3, :cond_2

    .line 38
    .line 39
    :cond_1
    move p2, v0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    if-ne p3, v2, :cond_1

    .line 42
    .line 43
    :cond_3
    :goto_0
    move p2, v2

    .line 44
    goto :goto_2

    .line 45
    :cond_4
    if-nez p3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->B0()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    :cond_5
    :goto_1
    move p2, v1

    .line 54
    goto :goto_2

    .line 55
    :cond_6
    if-ne p3, v2, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_7
    if-nez p3, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->B0()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_5

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :goto_2
    if-ne p2, v0, :cond_8

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_8
    const/4 p3, 0x0

    .line 71
    if-ne p2, v1, :cond_d

    .line 72
    .line 73
    invoke-static {p1}, Lww;->H(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_9

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_9
    invoke-virtual {p0, p3}, Lww;->u(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lww;->H(Landroid/view/View;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    sub-int/2addr p1, v2

    .line 89
    if-ltz p1, :cond_b

    .line 90
    .line 91
    invoke-virtual {p0}, Lww;->B()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-lt p1, p2, :cond_a

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_a
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:Ln8;

    .line 99
    .line 100
    invoke-virtual {p0}, Ln8;->a()I

    .line 101
    .line 102
    .line 103
    throw p4

    .line 104
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->B0()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_c

    .line 109
    .line 110
    invoke-virtual {p0}, Lww;->v()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    add-int/lit8 p3, p1, -0x1

    .line 115
    .line 116
    :cond_c
    invoke-virtual {p0, p3}, Lww;->u(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :cond_d
    invoke-static {p1}, Lww;->H(Landroid/view/View;)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {p0}, Lww;->B()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    sub-int/2addr p2, v2

    .line 130
    if-ne p1, p2, :cond_e

    .line 131
    .line 132
    :goto_4
    return-object p4

    .line 133
    :cond_e
    invoke-virtual {p0}, Lww;->v()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    sub-int/2addr p1, v2

    .line 138
    invoke-virtual {p0, p1}, Lww;->u(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Lww;->H(Landroid/view/View;)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    add-int/2addr p1, v2

    .line 147
    if-ltz p1, :cond_10

    .line 148
    .line 149
    invoke-virtual {p0}, Lww;->B()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-lt p1, p2, :cond_f

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_f
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:Ln8;

    .line 157
    .line 158
    invoke-virtual {p0}, Ln8;->a()I

    .line 159
    .line 160
    .line 161
    throw p4

    .line 162
    :cond_10
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->B0()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_11

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_11
    invoke-virtual {p0}, Lww;->v()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    add-int/lit8 p3, p1, -0x1

    .line 174
    .line 175
    :goto_6
    invoke-virtual {p0, p3}, Lww;->u(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0
.end method

.method public final T(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lww;->T(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lww;->v()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lww;->u(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lww;->H(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lww;->v()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lww;->u(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lww;->H(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final W(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lww;->B()I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final Z(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lww;->B()I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final a(I)Landroid/graphics/PointF;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final b0(Lcx;Lhx;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lhx;->b()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-lez p2, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->A0()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget p2, p0, Lww;->n:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p2, p0, Lww;->o:I

    .line 17
    .line 18
    :goto_0
    int-to-float p2, p2

    .line 19
    const/4 v0, 0x0

    .line 20
    cmpg-float p2, p2, v0

    .line 21
    .line 22
    if-gtz p2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->B0()Z

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    const-wide v0, 0x7fffffffffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0, v0, v1}, Lcx;->i(IJ)Lkx;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object p0, p0, Lkx;->a:Landroid/view/View;

    .line 39
    .line 40
    const-string p0, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    .line 41
    .line 42
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lww;->g0(Lcx;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final c0(Lhx;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lww;->u(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lww;->H(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->A0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final e()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->A0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public final j(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final k(Lhx;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final k0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final l(Lhx;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final m(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final m0(ILcx;Lhx;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->A0()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lww;->v()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0, p0, p1}, Lcx;->i(IJ)Lkx;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Lkx;->a:Landroid/view/View;

    .line 27
    .line 28
    const-string p0, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    .line 29
    .line 30
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_1
    :goto_0
    return v0
.end method

.method public final n(Lhx;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final n0(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Lhx;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final o0(ILcx;Lhx;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->e()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lww;->v()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0, p0, p1}, Lcx;->i(IJ)Lkx;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Lkx;->a:Landroid/view/View;

    .line 27
    .line 28
    const-string p0, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    .line 29
    .line 30
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_1
    :goto_0
    return v0
.end method

.method public final r()Lxw;
    .locals 1

    .line 1
    new-instance p0, Lxw;

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, v0, v0}, Lxw;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final x0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    new-instance v0, Ll8;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p0, p1}, Ll8;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput p2, v0, Ljo;->a:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lww;->y0(Ljo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final y(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lww;->y(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->A0()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    throw p0
.end method
