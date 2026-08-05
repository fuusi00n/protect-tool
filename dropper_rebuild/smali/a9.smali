.class public final La9;
.super La0;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La9;->d:I

    .line 2
    .line 3
    iput-object p2, p0, La9;->e:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, La0;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget v0, p0, La9;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, La0;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1, p2}, La0;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, La9;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/google/android/material/internal/CheckableImageButton;

    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;Lm0;)V
    .locals 6

    .line 1
    iget v0, p0, La9;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, La9;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, La0;->a:Landroid/view/View$AccessibilityDelegate;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p2, p2, Lm0;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 15
    .line 16
    .line 17
    check-cast v3, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 18
    .line 19
    iget-boolean p0, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->x:Z

    .line 20
    .line 21
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object p2, p2, Lm0;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 28
    .line 29
    .line 30
    check-cast v3, Lpq;

    .line 31
    .line 32
    iget-object p0, v3, Lpq;->e0:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    sget p0, Lvv;->mtrl_picker_toggle_to_year_selection:I

    .line 41
    .line 42
    invoke-virtual {v3}, Laj;->A()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget p0, Lvv;->mtrl_picker_toggle_to_day_selection:I

    .line 56
    .line 57
    invoke-virtual {v3}, Laj;->A()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    iget-object v0, p2, Lm0;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 76
    .line 77
    .line 78
    check-cast v3, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 79
    .line 80
    sget p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I

    .line 81
    .line 82
    instance-of p0, p1, Lcom/google/android/material/button/MaterialButton;

    .line 83
    .line 84
    const/4 v0, -0x1

    .line 85
    if-nez p0, :cond_1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_1
    move p0, v2

    .line 89
    move v4, p0

    .line 90
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-ge p0, v5, :cond_4

    .line 95
    .line 96
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-ne v5, p1, :cond_2

    .line 101
    .line 102
    move v0, v4

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    instance-of v5, v5, Lcom/google/android/material/button/MaterialButton;

    .line 109
    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    invoke-virtual {v3, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_3

    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    :goto_2
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 124
    .line 125
    iget-boolean p0, p1, Lcom/google/android/material/button/MaterialButton;->o:Z

    .line 126
    .line 127
    invoke-static {p0, v2, v1, v0, v1}, Ll0;->a(ZIIII)Ll0;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p2, p0}, Lm0;->h(Ll0;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_2
    iget-object v0, p2, Lm0;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 136
    .line 137
    invoke-virtual {p0, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 138
    .line 139
    .line 140
    sget p0, Lnv;->material_value_index:I

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    check-cast p0, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-lez p0, :cond_5

    .line 153
    .line 154
    check-cast v3, Lcom/google/android/material/timepicker/ClockFaceView;

    .line 155
    .line 156
    iget-object v3, v3, Lcom/google/android/material/timepicker/ClockFaceView;->z:Landroid/util/SparseArray;

    .line 157
    .line 158
    add-int/lit8 v4, p0, -0x1

    .line 159
    .line 160
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Landroid/view/View;

    .line 165
    .line 166
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    invoke-static {p1, v2, v1, p0, v1}, Ll0;->a(ZIIII)Ll0;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p2, p0}, Lm0;->h(Ll0;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 181
    .line 182
    .line 183
    sget-object p0, Lh0;->e:Lh0;

    .line 184
    .line 185
    invoke-virtual {p2, p0}, Lm0;->b(Lh0;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_3
    iget-object p2, p2, Lm0;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 190
    .line 191
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 192
    .line 193
    .line 194
    check-cast v3, Lcom/google/android/material/internal/CheckableImageButton;

    .line 195
    .line 196
    iget-boolean p0, v3, Lcom/google/android/material/internal/CheckableImageButton;->e:Z

    .line 197
    .line 198
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 199
    .line 200
    .line 201
    iget-boolean p0, v3, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 202
    .line 203
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 11

    .line 1
    iget v0, p0, La9;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, La0;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object v0, p0, La9;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/material/timepicker/ClockFaceView;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/google/android/material/timepicker/ClockFaceView;->v:Lcom/google/android/material/timepicker/ClockHandView;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/material/timepicker/ClockFaceView;->w:Landroid/graphics/Rect;

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    if-ne p2, v2, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    int-to-float v8, p0

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    int-to-float v9, p0

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    move-wide v5, v3

    .line 43
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x1

    .line 51
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1, p0}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-super {p0, p1, p2, p3}, La0;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    :goto_0
    return p0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
