.class public abstract Lf7;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Lf7;->c:[I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Lzu;->mtrl_progress_track_thickness:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v4, Lhw;->BaseProgressIndicator:[I

    .line 20
    .line 21
    new-array v7, v0, [I

    .line 22
    .line 23
    invoke-static {p1, p2, p3, p4}, Lr20;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    .line 25
    .line 26
    move-object v2, p1

    .line 27
    move-object v3, p2

    .line 28
    move v5, p3

    .line 29
    move v6, p4

    .line 30
    invoke-static/range {v2 .. v7}, Lr20;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget p2, Lhw;->BaseProgressIndicator_trackThickness:I

    .line 38
    .line 39
    invoke-static {v2, p1, p2, v1}, Lnm;->y(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iput p2, p0, Lf7;->a:I

    .line 44
    .line 45
    sget p2, Lhw;->BaseProgressIndicator_trackCornerRadius:I

    .line 46
    .line 47
    invoke-static {v2, p1, p2, v0}, Lnm;->y(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iget p3, p0, Lf7;->a:I

    .line 52
    .line 53
    div-int/lit8 p3, p3, 0x2

    .line 54
    .line 55
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iput p2, p0, Lf7;->b:I

    .line 60
    .line 61
    sget p2, Lhw;->BaseProgressIndicator_showAnimationBehavior:I

    .line 62
    .line 63
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, p0, Lf7;->e:I

    .line 68
    .line 69
    sget p2, Lhw;->BaseProgressIndicator_hideAnimationBehavior:I

    .line 70
    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iput p2, p0, Lf7;->f:I

    .line 76
    .line 77
    sget p2, Lhw;->BaseProgressIndicator_indicatorTrackGapSize:I

    .line 78
    .line 79
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    iput p2, p0, Lf7;->g:I

    .line 84
    .line 85
    sget p2, Lhw;->BaseProgressIndicator_indicatorColor:I

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    const/4 p3, -0x1

    .line 92
    if-nez p2, :cond_0

    .line 93
    .line 94
    sget p2, Ltu;->colorPrimary:I

    .line 95
    .line 96
    invoke-static {v2, p2, p3}, Lvd;->o(Landroid/content/Context;II)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    filled-new-array {p2}, [I

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iput-object p2, p0, Lf7;->c:[I

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    sget p2, Lhw;->BaseProgressIndicator_indicatorColor:I

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    iget p2, p2, Landroid/util/TypedValue;->type:I

    .line 114
    .line 115
    const/4 p4, 0x1

    .line 116
    if-eq p2, p4, :cond_1

    .line 117
    .line 118
    sget p2, Lhw;->BaseProgressIndicator_indicatorColor:I

    .line 119
    .line 120
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    filled-new-array {p2}, [I

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    iput-object p2, p0, Lf7;->c:[I

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    sget p4, Lhw;->BaseProgressIndicator_indicatorColor:I

    .line 136
    .line 137
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 138
    .line 139
    .line 140
    move-result p4

    .line 141
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    iput-object p2, p0, Lf7;->c:[I

    .line 146
    .line 147
    array-length p2, p2

    .line 148
    if-eqz p2, :cond_3

    .line 149
    .line 150
    :goto_0
    sget p2, Lhw;->BaseProgressIndicator_trackColor:I

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_2

    .line 157
    .line 158
    sget p2, Lhw;->BaseProgressIndicator_trackColor:I

    .line 159
    .line 160
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    iput p2, p0, Lf7;->d:I

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_2
    iget-object p2, p0, Lf7;->c:[I

    .line 168
    .line 169
    aget p2, p2, v0

    .line 170
    .line 171
    iput p2, p0, Lf7;->d:I

    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    const p3, 0x1010033

    .line 178
    .line 179
    .line 180
    filled-new-array {p3}, [I

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    invoke-virtual {p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    const p3, 0x3e4ccccd    # 0.2f

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 192
    .line 193
    .line 194
    move-result p3

    .line 195
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    .line 197
    .line 198
    const/high16 p2, 0x437f0000    # 255.0f

    .line 199
    .line 200
    mul-float/2addr p3, p2

    .line 201
    float-to-int p2, p3

    .line 202
    iget p3, p0, Lf7;->d:I

    .line 203
    .line 204
    invoke-static {p3, p2}, Lvd;->j(II)I

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    iput p2, p0, Lf7;->d:I

    .line 209
    .line 210
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_3
    const-string p0, "indicatorColors cannot be empty when indicatorColor is not used."

    .line 215
    .line 216
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const/4 p0, 0x0

    .line 220
    throw p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    iget p0, p0, Lf7;->g:I

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "indicatorTrackGapSize must be >= 0."

    .line 7
    .line 8
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
