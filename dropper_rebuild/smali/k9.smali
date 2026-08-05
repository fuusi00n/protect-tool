.class public final Lk9;
.super La0;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final o:Landroid/graphics/Rect;

.field public static final p:Lqg;

.field public static final q:Lqg;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:[I

.field public final h:Landroid/view/accessibility/AccessibilityManager;

.field public final i:Lcom/google/android/material/chip/Chip;

.field public j:Lsh;

.field public k:I

.field public l:I

.field public m:I

.field public final synthetic n:Lcom/google/android/material/chip/Chip;

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/high16 v2, -0x80000000

    .line 7
    .line 8
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lk9;->o:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance v0, Lqg;

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lk9;->p:Lqg;

    .line 21
    .line 22
    new-instance v0, Lqg;

    .line 23
    .line 24
    const/16 v1, 0x11

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lk9;->q:Lqg;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lk9;->n:Lcom/google/android/material/chip/Chip;

    .line 2
    .line 3
    invoke-direct {p0}, La0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lk9;->d:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lk9;->e:Landroid/graphics/Rect;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lk9;->f:Landroid/graphics/Rect;

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    new-array p1, p1, [I

    .line 29
    .line 30
    iput-object p1, p0, Lk9;->g:[I

    .line 31
    .line 32
    const/high16 p1, -0x80000000

    .line 33
    .line 34
    iput p1, p0, Lk9;->k:I

    .line 35
    .line 36
    iput p1, p0, Lk9;->l:I

    .line 37
    .line 38
    iput p1, p0, Lk9;->m:I

    .line 39
    .line 40
    iput-object p2, p0, Lk9;->i:Lcom/google/android/material/chip/Chip;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "accessibility"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 53
    .line 54
    iput-object p1, p0, Lk9;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    invoke-virtual {p2, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getImportantForAccessibility()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_0

    .line 67
    .line 68
    invoke-virtual {p2, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)Lo0;
    .locals 0

    .line 1
    iget-object p1, p0, Lk9;->j:Lsh;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lsh;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lsh;-><init>(Lk9;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lk9;->j:Lsh;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lk9;->j:Lsh;

    .line 13
    .line 14
    return-object p0
.end method

.method public final d(Landroid/view/View;Lm0;)V
    .locals 1

    .line 1
    iget-object p2, p2, Lm0;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    iget-object v0, p0, La0;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lk9;->n:Lcom/google/android/material/chip/Chip;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p1, Ll9;->Q:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final j(I)Z
    .locals 3

    .line 1
    iget v0, p0, Lk9;->l:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/high16 v0, -0x80000000

    .line 8
    .line 9
    iput v0, p0, Lk9;->l:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lk9;->n:Lcom/google/android/material/chip/Chip;

    .line 15
    .line 16
    iput-boolean v1, v2, Lcom/google/android/material/chip/Chip;->m:Z

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {p0, p1, v1}, Lk9;->p(II)V

    .line 24
    .line 25
    .line 26
    return v0
.end method

.method public final k(I)Lm0;
    .locals 12

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lm0;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lm0;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 15
    .line 16
    .line 17
    const-string v3, "android.view.View"

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lk9;->o:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lk9;->i:Lcom/google/android/material/chip/Chip;

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    iget-object v5, v1, Lm0;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 36
    .line 37
    const-string v6, ""

    .line 38
    .line 39
    if-ne p1, v2, :cond_2

    .line 40
    .line 41
    iget-object v7, p0, Lk9;->n:Lcom/google/android/material/chip/Chip;

    .line 42
    .line 43
    invoke-virtual {v7}, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    sget v10, Lvv;->mtrl_chip_close_icon_content_description:I

    .line 62
    .line 63
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    if-nez v11, :cond_1

    .line 68
    .line 69
    move-object v6, v8

    .line 70
    :cond_1
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v9, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-static {v7}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 90
    .line 91
    .line 92
    sget-object v6, Lh0;->e:Lh0;

    .line 93
    .line 94
    invoke-virtual {v1, v6}, Lm0;->b(Lh0;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    sget-object v6, Lcom/google/android/material/chip/Chip;->x:Landroid/graphics/Rect;

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-virtual {v1}, Lm0;->g()Ljava/lang/CharSequence;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-nez v5, :cond_4

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    if-eqz v5, :cond_3

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 127
    .line 128
    const-string p1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    .line 129
    .line 130
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_4
    :goto_2
    iget-object v5, p0, Lk9;->e:Landroid/graphics/Rect;

    .line 135
    .line 136
    invoke-virtual {v1, v5}, Lm0;->f(Landroid/graphics/Rect;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-nez v5, :cond_11

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    and-int/lit8 v6, v5, 0x40

    .line 150
    .line 151
    if-nez v6, :cond_10

    .line 152
    .line 153
    const/16 v6, 0x80

    .line 154
    .line 155
    and-int/2addr v5, v6

    .line 156
    if-nez v5, :cond_f

    .line 157
    .line 158
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iput p1, v1, Lm0;->b:I

    .line 170
    .line 171
    invoke-virtual {v0, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 172
    .line 173
    .line 174
    iget v5, p0, Lk9;->k:I

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    if-ne v5, p1, :cond_5

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v6}, Lm0;->a(I)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 187
    .line 188
    .line 189
    const/16 v5, 0x40

    .line 190
    .line 191
    invoke-virtual {v1, v5}, Lm0;->a(I)V

    .line 192
    .line 193
    .line 194
    :goto_3
    iget v5, p0, Lk9;->l:I

    .line 195
    .line 196
    if-ne v5, p1, :cond_6

    .line 197
    .line 198
    move p1, v2

    .line 199
    goto :goto_4

    .line 200
    :cond_6
    move p1, v7

    .line 201
    :goto_4
    if-eqz p1, :cond_7

    .line 202
    .line 203
    const/4 v5, 0x2

    .line 204
    invoke-virtual {v1, v5}, Lm0;->a(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_8

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Lm0;->a(I)V

    .line 215
    .line 216
    .line 217
    :cond_8
    :goto_5
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lk9;->g:[I

    .line 221
    .line 222
    invoke-virtual {v4, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 223
    .line 224
    .line 225
    iget-object v5, p0, Lk9;->d:Landroid/graphics/Rect;

    .line 226
    .line 227
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_9

    .line 235
    .line 236
    invoke-virtual {v1, v5}, Lm0;->f(Landroid/graphics/Rect;)V

    .line 237
    .line 238
    .line 239
    aget v3, p1, v7

    .line 240
    .line 241
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    sub-int/2addr v3, v6

    .line 246
    aget v6, p1, v2

    .line 247
    .line 248
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    sub-int/2addr v6, v8

    .line 253
    invoke-virtual {v5, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 254
    .line 255
    .line 256
    :cond_9
    iget-object p0, p0, Lk9;->f:Landroid/graphics/Rect;

    .line 257
    .line 258
    invoke-virtual {v4, p0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_e

    .line 263
    .line 264
    aget v3, p1, v7

    .line 265
    .line 266
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    sub-int/2addr v3, v6

    .line 271
    aget p1, p1, v2

    .line 272
    .line 273
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    sub-int/2addr p1, v6

    .line 278
    invoke-virtual {p0, v3, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    if-eqz p0, :cond_e

    .line 286
    .line 287
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 291
    .line 292
    .line 293
    move-result p0

    .line 294
    if-eqz p0, :cond_a

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    if-eqz p0, :cond_b

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    :goto_6
    instance-of p1, p0, Landroid/view/View;

    .line 309
    .line 310
    if-eqz p1, :cond_d

    .line 311
    .line 312
    check-cast p0, Landroid/view/View;

    .line 313
    .line 314
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    const/4 v3, 0x0

    .line 319
    cmpg-float p1, p1, v3

    .line 320
    .line 321
    if-lez p1, :cond_e

    .line 322
    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-eqz p1, :cond_c

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    goto :goto_6

    .line 335
    :cond_d
    if-eqz p0, :cond_e

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 338
    .line 339
    .line 340
    :cond_e
    :goto_7
    return-object v1

    .line 341
    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    .line 342
    .line 343
    const-string p1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 344
    .line 345
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    throw p0

    .line 349
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    .line 350
    .line 351
    const-string p1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 352
    .line 353
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw p0

    .line 357
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    .line 358
    .line 359
    const-string p1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    .line 360
    .line 361
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw p0
.end method

.method public final l(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/google/android/material/chip/Chip;->w:I

    .line 10
    .line 11
    iget-object p0, p0, Lk9;->n:Lcom/google/android/material/chip/Chip;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-boolean v0, v0, Ll9;->K:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final m(ILandroid/graphics/Rect;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lk9;->l(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lo00;

    .line 16
    .line 17
    invoke-direct {v4}, Lo00;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    move v6, v5

    .line 22
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-ge v6, v7, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-virtual {v0, v7}, Lk9;->k(I)Lm0;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual {v4, v8, v7}, Lo00;->a(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget v3, v0, Lk9;->l:I

    .line 59
    .line 60
    const/high16 v7, -0x80000000

    .line 61
    .line 62
    if-ne v3, v7, :cond_1

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object v8, v4, Lo00;->a:[I

    .line 67
    .line 68
    iget v9, v4, Lo00;->c:I

    .line 69
    .line 70
    invoke-static {v9, v3, v8}, Ld40;->d(II[I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-ltz v3, :cond_2

    .line 75
    .line 76
    iget-object v8, v4, Lo00;->b:[Ljava/lang/Object;

    .line 77
    .line 78
    aget-object v3, v8, v3

    .line 79
    .line 80
    sget-object v8, Lo00;->d:Ljava/lang/Object;

    .line 81
    .line 82
    if-ne v3, v8, :cond_3

    .line 83
    .line 84
    :cond_2
    const/4 v3, 0x0

    .line 85
    :cond_3
    check-cast v3, Lm0;

    .line 86
    .line 87
    :goto_1
    sget-object v8, Lk9;->p:Lqg;

    .line 88
    .line 89
    sget-object v9, Lk9;->q:Lqg;

    .line 90
    .line 91
    iget-object v10, v0, Lk9;->i:Lcom/google/android/material/chip/Chip;

    .line 92
    .line 93
    const/4 v11, 0x2

    .line 94
    const/4 v12, -0x1

    .line 95
    const/4 v13, 0x1

    .line 96
    if-eq v1, v13, :cond_17

    .line 97
    .line 98
    if-eq v1, v11, :cond_17

    .line 99
    .line 100
    const/16 v11, 0x82

    .line 101
    .line 102
    const/16 v14, 0x42

    .line 103
    .line 104
    const/16 v15, 0x21

    .line 105
    .line 106
    const/16 v6, 0x11

    .line 107
    .line 108
    if-eq v1, v6, :cond_4

    .line 109
    .line 110
    if-eq v1, v15, :cond_4

    .line 111
    .line 112
    if-eq v1, v14, :cond_4

    .line 113
    .line 114
    if-ne v1, v11, :cond_5

    .line 115
    .line 116
    :cond_4
    move/from16 v17, v13

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    const-string v0, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 120
    .line 121
    invoke-static {v0}, Lg9;->j(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return v5

    .line 125
    :goto_2
    new-instance v13, Landroid/graphics/Rect;

    .line 126
    .line 127
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 128
    .line 129
    .line 130
    iget v5, v0, Lk9;->l:I

    .line 131
    .line 132
    const-string v19, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 133
    .line 134
    if-eq v5, v7, :cond_6

    .line 135
    .line 136
    invoke-virtual {v0, v5}, Lk9;->n(I)Lm0;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2, v13}, Lm0;->f(Landroid/graphics/Rect;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    if-eqz v2, :cond_7

    .line 145
    .line 146
    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eq v1, v6, :cond_b

    .line 159
    .line 160
    if-eq v1, v15, :cond_a

    .line 161
    .line 162
    if-eq v1, v14, :cond_9

    .line 163
    .line 164
    if-ne v1, v11, :cond_8

    .line 165
    .line 166
    const/4 v10, 0x0

    .line 167
    invoke-virtual {v13, v10, v12, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_8
    const/4 v10, 0x0

    .line 172
    invoke-static/range {v19 .. v19}, Lg9;->j(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return v10

    .line 176
    :cond_9
    const/4 v10, 0x0

    .line 177
    invoke-virtual {v13, v12, v10, v12, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_a
    const/4 v10, 0x0

    .line 182
    invoke-virtual {v13, v10, v5, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_b
    const/4 v10, 0x0

    .line 187
    invoke-virtual {v13, v2, v10, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    .line 189
    .line 190
    :goto_3
    new-instance v2, Landroid/graphics/Rect;

    .line 191
    .line 192
    invoke-direct {v2, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 193
    .line 194
    .line 195
    if-eq v1, v6, :cond_f

    .line 196
    .line 197
    if-eq v1, v15, :cond_e

    .line 198
    .line 199
    if-eq v1, v14, :cond_d

    .line 200
    .line 201
    if-ne v1, v11, :cond_c

    .line 202
    .line 203
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    add-int/lit8 v5, v5, 0x1

    .line 208
    .line 209
    neg-int v5, v5

    .line 210
    const/4 v10, 0x0

    .line 211
    invoke-virtual {v2, v10, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_c
    const/4 v10, 0x0

    .line 216
    invoke-static/range {v19 .. v19}, Lg9;->j(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return v10

    .line 220
    :cond_d
    const/4 v10, 0x0

    .line 221
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    add-int/lit8 v5, v5, 0x1

    .line 226
    .line 227
    neg-int v5, v5

    .line 228
    invoke-virtual {v2, v5, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_e
    const/4 v10, 0x0

    .line 233
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    add-int/lit8 v5, v5, 0x1

    .line 238
    .line 239
    invoke-virtual {v2, v10, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_f
    const/4 v10, 0x0

    .line 244
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    add-int/lit8 v5, v5, 0x1

    .line 249
    .line 250
    invoke-virtual {v2, v5, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 251
    .line 252
    .line 253
    :goto_4
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    iget v5, v4, Lo00;->c:I

    .line 257
    .line 258
    new-instance v6, Landroid/graphics/Rect;

    .line 259
    .line 260
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 261
    .line 262
    .line 263
    const/4 v10, 0x0

    .line 264
    const/16 v16, 0x0

    .line 265
    .line 266
    :goto_5
    if-ge v10, v5, :cond_16

    .line 267
    .line 268
    iget-object v9, v4, Lo00;->b:[Ljava/lang/Object;

    .line 269
    .line 270
    aget-object v9, v9, v10

    .line 271
    .line 272
    check-cast v9, Lm0;

    .line 273
    .line 274
    if-ne v9, v3, :cond_10

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_10
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v9, v6}, Lm0;->f(Landroid/graphics/Rect;)V

    .line 281
    .line 282
    .line 283
    invoke-static {v1, v13, v6}, Lvd;->A(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    if-nez v11, :cond_11

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_11
    invoke-static {v1, v13, v2}, Lvd;->A(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    if-nez v11, :cond_12

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_12
    invoke-static {v1, v13, v6, v2}, Lvd;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    if-eqz v11, :cond_13

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_13
    invoke-static {v1, v13, v2, v6}, Lvd;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-eqz v11, :cond_14

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_14
    invoke-static {v1, v13, v6}, Lvd;->G(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 312
    .line 313
    .line 314
    move-result v11

    .line 315
    invoke-static {v1, v13, v6}, Lvd;->H(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 316
    .line 317
    .line 318
    move-result v14

    .line 319
    mul-int/lit8 v15, v11, 0xd

    .line 320
    .line 321
    mul-int/2addr v15, v11

    .line 322
    mul-int/2addr v14, v14

    .line 323
    add-int/2addr v14, v15

    .line 324
    invoke-static {v1, v13, v2}, Lvd;->G(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    invoke-static {v1, v13, v2}, Lvd;->H(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 329
    .line 330
    .line 331
    move-result v15

    .line 332
    mul-int/lit8 v17, v11, 0xd

    .line 333
    .line 334
    mul-int v17, v17, v11

    .line 335
    .line 336
    mul-int/2addr v15, v15

    .line 337
    add-int v15, v15, v17

    .line 338
    .line 339
    if-ge v14, v15, :cond_15

    .line 340
    .line 341
    :goto_6
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 342
    .line 343
    .line 344
    move-object/from16 v16, v9

    .line 345
    .line 346
    :cond_15
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_16
    const/16 v18, 0x0

    .line 350
    .line 351
    :goto_8
    move-object/from16 v1, v16

    .line 352
    .line 353
    goto/16 :goto_10

    .line 354
    .line 355
    :cond_17
    move/from16 v17, v13

    .line 356
    .line 357
    sget-object v2, Lw50;->a:Ljava/util/WeakHashMap;

    .line 358
    .line 359
    invoke-virtual {v10}, Landroid/view/View;->getLayoutDirection()I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    move/from16 v5, v17

    .line 364
    .line 365
    if-ne v2, v5, :cond_18

    .line 366
    .line 367
    const/4 v2, 0x1

    .line 368
    goto :goto_9

    .line 369
    :cond_18
    const/4 v2, 0x0

    .line 370
    :goto_9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    iget v5, v4, Lo00;->c:I

    .line 374
    .line 375
    new-instance v6, Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 378
    .line 379
    .line 380
    const/4 v10, 0x0

    .line 381
    :goto_a
    if-ge v10, v5, :cond_19

    .line 382
    .line 383
    iget-object v9, v4, Lo00;->b:[Ljava/lang/Object;

    .line 384
    .line 385
    aget-object v9, v9, v10

    .line 386
    .line 387
    check-cast v9, Lm0;

    .line 388
    .line 389
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    add-int/lit8 v10, v10, 0x1

    .line 393
    .line 394
    goto :goto_a

    .line 395
    :cond_19
    new-instance v5, Lhi;

    .line 396
    .line 397
    invoke-direct {v5, v8, v2}, Lhi;-><init>(Lqg;Z)V

    .line 398
    .line 399
    .line 400
    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 401
    .line 402
    .line 403
    const/4 v5, 0x1

    .line 404
    if-eq v1, v5, :cond_1d

    .line 405
    .line 406
    if-ne v1, v11, :cond_1c

    .line 407
    .line 408
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-nez v3, :cond_1a

    .line 413
    .line 414
    move v2, v12

    .line 415
    goto :goto_b

    .line 416
    :cond_1a
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    :goto_b
    add-int/2addr v2, v5

    .line 421
    if-ge v2, v1, :cond_1b

    .line 422
    .line 423
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    :goto_c
    const/16 v18, 0x0

    .line 428
    .line 429
    goto :goto_f

    .line 430
    :cond_1b
    const/4 v6, 0x0

    .line 431
    goto :goto_c

    .line 432
    :cond_1c
    const-string v0, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 433
    .line 434
    invoke-static {v0}, Lg9;->j(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    const/16 v18, 0x0

    .line 438
    .line 439
    return v18

    .line 440
    :cond_1d
    const/16 v18, 0x0

    .line 441
    .line 442
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-nez v3, :cond_1e

    .line 447
    .line 448
    :goto_d
    const/16 v17, 0x1

    .line 449
    .line 450
    goto :goto_e

    .line 451
    :cond_1e
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    goto :goto_d

    .line 456
    :goto_e
    add-int/lit8 v1, v1, -0x1

    .line 457
    .line 458
    if-ltz v1, :cond_1f

    .line 459
    .line 460
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    goto :goto_f

    .line 465
    :cond_1f
    const/4 v6, 0x0

    .line 466
    :goto_f
    move-object/from16 v16, v6

    .line 467
    .line 468
    check-cast v16, Lm0;

    .line 469
    .line 470
    goto :goto_8

    .line 471
    :goto_10
    if-nez v1, :cond_20

    .line 472
    .line 473
    goto :goto_13

    .line 474
    :cond_20
    move/from16 v5, v18

    .line 475
    .line 476
    :goto_11
    iget v2, v4, Lo00;->c:I

    .line 477
    .line 478
    if-ge v5, v2, :cond_22

    .line 479
    .line 480
    iget-object v2, v4, Lo00;->b:[Ljava/lang/Object;

    .line 481
    .line 482
    aget-object v2, v2, v5

    .line 483
    .line 484
    if-ne v2, v1, :cond_21

    .line 485
    .line 486
    move v12, v5

    .line 487
    goto :goto_12

    .line 488
    :cond_21
    add-int/lit8 v5, v5, 0x1

    .line 489
    .line 490
    goto :goto_11

    .line 491
    :cond_22
    :goto_12
    iget-object v1, v4, Lo00;->a:[I

    .line 492
    .line 493
    aget v7, v1, v12

    .line 494
    .line 495
    :goto_13
    invoke-virtual {v0, v7}, Lk9;->o(I)Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    return v0
.end method

.method public final n(I)Lm0;
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    .line 4
    iget-object p1, p0, Lk9;->i:Lcom/google/android/material/chip/Chip;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lm0;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lm0;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lw50;->a:Ljava/util/WeakHashMap;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/Chip;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lk9;->l(Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-lez p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-gtz p0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string p1, "Views cannot have both real and virtual children"

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_1
    if-ge v0, p0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v4, v1, Lm0;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 67
    .line 68
    invoke-virtual {v4, p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    return-object v1

    .line 75
    :cond_3
    invoke-virtual {p0, p1}, Lk9;->k(I)Lm0;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public final o(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk9;->i:Lcom/google/android/material/chip/Chip;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Lk9;->l:I

    .line 17
    .line 18
    if-ne v0, p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/high16 v1, -0x80000000

    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lk9;->j(I)Z

    .line 26
    .line 27
    .line 28
    :cond_2
    if-ne p1, v1, :cond_3

    .line 29
    .line 30
    :goto_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_3
    iput p1, p0, Lk9;->l:I

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    if-ne p1, v0, :cond_4

    .line 36
    .line 37
    iget-object v1, p0, Lk9;->n:Lcom/google/android/material/chip/Chip;

    .line 38
    .line 39
    iput-boolean v0, v1, Lcom/google/android/material/chip/Chip;->m:Z

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    .line 42
    .line 43
    .line 44
    :cond_4
    const/16 v1, 0x8

    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lk9;->p(II)V

    .line 47
    .line 48
    .line 49
    return v0
.end method

.method public final p(II)V
    .locals 4

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-eq p1, v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lk9;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lk9;->i:Lcom/google/android/material/chip/Chip;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    const/4 v2, -0x1

    .line 25
    if-eq p1, v2, :cond_4

    .line 26
    .line 27
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p1}, Lk9;->n(I)Lm0;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0}, Lm0;->g()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lm0;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 101
    .line 102
    const-string p1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {v0, p2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    invoke-interface {v1, v0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_2
    return-void
.end method
