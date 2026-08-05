.class public final Luq;
.super Lef;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lef;"
    }
.end annotation

.field public A0:Lxq;

.field public B0:Z

.field public C0:Ljava/lang/CharSequence;

.field public D0:Ljava/lang/CharSequence;

.field public final g0:Ljava/util/LinkedHashSet;

.field public final h0:Ljava/util/LinkedHashSet;

.field public i0:I

.field public j0:Lau;

.field public k0:Ly7;

.field public l0:Lpq;

.field public m0:I

.field public n0:Ljava/lang/CharSequence;

.field public o0:Z

.field public p0:I

.field public q0:I

.field public r0:Ljava/lang/CharSequence;

.field public s0:I

.field public t0:Ljava/lang/CharSequence;

.field public u0:I

.field public v0:Ljava/lang/CharSequence;

.field public w0:I

.field public x0:Ljava/lang/CharSequence;

.field public y0:Landroid/widget/TextView;

.field public z0:Lcom/google/android/material/internal/CheckableImageButton;

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lef;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Luq;->g0:Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Luq;->h0:Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    return-void
.end method

.method public static G(Landroid/content/Context;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget v0, Lzu;->mtrl_calendar_content_padding:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Lm40;->b()Ljava/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x5

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lm40;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x7

    .line 32
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMaximum(I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 40
    .line 41
    .line 42
    sget v1, Lzu;->mtrl_calendar_day_width:I

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    sget v2, Lzu;->mtrl_calendar_month_horizontal_padding:I

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    mul-int/2addr v0, v4

    .line 55
    mul-int/2addr v1, v5

    .line 56
    add-int/2addr v1, v0

    .line 57
    sub-int/2addr v5, v3

    .line 58
    mul-int/2addr v5, p0

    .line 59
    add-int/2addr v5, v1

    .line 60
    return v5
.end method

.method public static H(Landroid/content/Context;I)Z
    .locals 2

    .line 1
    sget v0, Ltu;->materialCalendarStyle:I

    .line 2
    .line 3
    const-class v1, Lpq;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, p0, v1}, Ld40;->K(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 14
    .line 15
    filled-new-array {p1}, [I

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    return p1
.end method

.method public final E()Landroid/app/Dialog;
    .locals 6

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Laj;->A()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Laj;->A()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    iget v2, p0, Luq;->i0:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x101020d

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Luq;->H(Landroid/content/Context;I)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput-boolean v2, p0, Luq;->o0:Z

    .line 30
    .line 31
    new-instance v2, Lxq;

    .line 32
    .line 33
    sget v4, Ltu;->materialCalendarStyle:I

    .line 34
    .line 35
    sget v5, Lzv;->Widget_MaterialComponents_MaterialCalendar:I

    .line 36
    .line 37
    invoke-direct {v2, v1, v3, v4, v5}, Lxq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Luq;->A0:Lxq;

    .line 41
    .line 42
    sget-object v2, Lhw;->MaterialCalendar:[I

    .line 43
    .line 44
    sget v4, Ltu;->materialCalendarStyle:I

    .line 45
    .line 46
    sget v5, Lzv;->Widget_MaterialComponents_MaterialCalendar:I

    .line 47
    .line 48
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget v3, Lhw;->MaterialCalendar_backgroundTint:I

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Luq;->A0:Lxq;

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Lxq;->h(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Luq;->A0:Lxq;

    .line 68
    .line 69
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lxq;->j(Landroid/content/res/ColorStateList;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Luq;->A0:Lxq;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v2, Lw50;->a:Ljava/util/WeakHashMap;

    .line 87
    .line 88
    invoke-static {v1}, Ll50;->i(Landroid/view/View;)F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p0, v1}, Lxq;->i(F)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Luq;->F()V

    .line 97
    .line 98
    .line 99
    throw v3
.end method

.method public final F()V
    .locals 1

    .line 1
    iget-object p0, p0, Laj;->f:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v0, "DATE_SELECTOR_KEY"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lg9;->a()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p0, p0, Luq;->g0:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Luq;->h0:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Laj;->E:Landroid/view/View;

    .line 24
    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-super {p0, p1}, Lef;->onDismiss(Landroid/content/DialogInterface;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final q(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lef;->q(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Laj;->f:Landroid/os/Bundle;

    .line 7
    .line 8
    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Luq;->i0:I

    .line 15
    .line 16
    const-string v0, "DATE_SELECTOR_KEY"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_5

    .line 23
    .line 24
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ly7;

    .line 31
    .line 32
    iput-object v0, p0, Luq;->k0:Ly7;

    .line 33
    .line 34
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Luq;->m0:I

    .line 49
    .line 50
    const-string v0, "TITLE_TEXT_KEY"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Luq;->n0:Ljava/lang/CharSequence;

    .line 57
    .line 58
    const-string v0, "INPUT_MODE_KEY"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Luq;->p0:I

    .line 65
    .line 66
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Luq;->q0:I

    .line 73
    .line 74
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Luq;->r0:Ljava/lang/CharSequence;

    .line 81
    .line 82
    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Luq;->s0:I

    .line 89
    .line 90
    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Luq;->t0:Ljava/lang/CharSequence;

    .line 97
    .line 98
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput v0, p0, Luq;->u0:I

    .line 105
    .line 106
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Luq;->v0:Ljava/lang/CharSequence;

    .line 113
    .line 114
    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput v0, p0, Luq;->w0:I

    .line 121
    .line 122
    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Luq;->x0:Ljava/lang/CharSequence;

    .line 129
    .line 130
    iget-object p1, p0, Luq;->n0:Ljava/lang/CharSequence;

    .line 131
    .line 132
    if-eqz p1, :cond_1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Laj;->A()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget v0, p0, Luq;->m0:I

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    :goto_0
    iput-object p1, p0, Luq;->C0:Ljava/lang/CharSequence;

    .line 150
    .line 151
    if-eqz p1, :cond_2

    .line 152
    .line 153
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v1, "\n"

    .line 158
    .line 159
    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    array-length v1, v0

    .line 164
    const/4 v2, 0x1

    .line 165
    if-le v1, v2, :cond_3

    .line 166
    .line 167
    const/4 p1, 0x0

    .line 168
    aget-object p1, v0, p1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_2
    const/4 p1, 0x0

    .line 172
    :cond_3
    :goto_1
    iput-object p1, p0, Luq;->D0:Ljava/lang/CharSequence;

    .line 173
    .line 174
    return-void

    .line 175
    :cond_4
    invoke-static {}, Lg9;->a()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_5
    invoke-static {}, Lg9;->a()V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public final r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    iget-boolean v0, p0, Luq;->o0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lrv;->mtrl_picker_fullscreen:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lrv;->mtrl_picker_dialog:I

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-boolean v0, p0, Luq;->o0:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget v0, Lnv;->mtrl_calendar_frame:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    invoke-static {p2}, Luq;->G(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, -0x2

    .line 35
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    sget v0, Lnv;->mtrl_calendar_main_pane:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    .line 50
    invoke-static {p2}, Luq;->G(Landroid/content/Context;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/4 v3, -0x1

    .line 55
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    sget v0, Lnv;->mtrl_picker_header_selection_text:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 73
    .line 74
    .line 75
    sget v0, Lnv;->mtrl_picker_header_toggle:I

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/google/android/material/internal/CheckableImageButton;

    .line 82
    .line 83
    iput-object v0, p0, Luq;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 84
    .line 85
    sget v0, Lnv;->mtrl_picker_title_text:I

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/TextView;

    .line 92
    .line 93
    iput-object v0, p0, Luq;->y0:Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v0, p0, Luq;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 96
    .line 97
    const-string v2, "TOGGLE_BUTTON_TAG"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Luq;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 103
    .line 104
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    .line 105
    .line 106
    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 107
    .line 108
    .line 109
    const v3, 0x10100a0

    .line 110
    .line 111
    .line 112
    filled-new-array {v3}, [I

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    sget v4, Lcv;->material_ic_calendar_black_24dp:I

    .line 117
    .line 118
    invoke-static {p2, v4}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 123
    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    new-array v4, v3, [I

    .line 127
    .line 128
    sget v5, Lcv;->material_ic_edit_black_24dp:I

    .line 129
    .line 130
    invoke-static {p2, v5}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {v2, v4, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ln4;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Luq;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 141
    .line 142
    iget v0, p0, Luq;->p0:I

    .line 143
    .line 144
    if-eqz v0, :cond_2

    .line 145
    .line 146
    move v3, v1

    .line 147
    :cond_2
    invoke-virtual {p2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 148
    .line 149
    .line 150
    iget-object p2, p0, Luq;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 151
    .line 152
    const/4 v0, 0x0

    .line 153
    invoke-static {p2, v0}, Lw50;->l(Landroid/view/View;La0;)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Luq;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 157
    .line 158
    iget v2, p0, Luq;->p0:I

    .line 159
    .line 160
    if-ne v2, v1, :cond_3

    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    sget v1, Lvv;->mtrl_picker_toggle_to_calendar_input_mode:I

    .line 167
    .line 168
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    goto :goto_2

    .line 173
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    sget v1, Lvv;->mtrl_picker_toggle_to_text_input_mode:I

    .line 178
    .line 179
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    :goto_2
    iget-object v1, p0, Luq;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 184
    .line 185
    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p0, Luq;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 189
    .line 190
    new-instance v1, Lt9;

    .line 191
    .line 192
    const/4 v2, 0x2

    .line 193
    invoke-direct {v1, v2, p0}, Lt9;-><init>(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    sget p2, Lnv;->confirm_button:I

    .line 200
    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Landroid/widget/Button;

    .line 206
    .line 207
    invoke-virtual {p0}, Luq;->F()V

    .line 208
    .line 209
    .line 210
    throw v0
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lef;->v(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 5
    .line 6
    iget v1, p0, Luq;->i0:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DATE_SELECTOR_KEY"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lx7;

    .line 18
    .line 19
    iget-object v2, p0, Luq;->k0:Ly7;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v3, v2, Ly7;->a:Lzr;

    .line 25
    .line 26
    iget-wide v3, v3, Lzr;->f:J

    .line 27
    .line 28
    iget-object v5, v2, Ly7;->b:Lzr;

    .line 29
    .line 30
    iget-wide v5, v5, Lzr;->f:J

    .line 31
    .line 32
    iget-object v7, v2, Ly7;->d:Lzr;

    .line 33
    .line 34
    iget-wide v7, v7, Lzr;->f:J

    .line 35
    .line 36
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iput-object v7, v0, Lx7;->a:Ljava/lang/Long;

    .line 41
    .line 42
    iget v13, v2, Ly7;->e:I

    .line 43
    .line 44
    iget-object v2, v2, Ly7;->c:Lsd;

    .line 45
    .line 46
    iget-object v7, p0, Luq;->l0:Lpq;

    .line 47
    .line 48
    if-nez v7, :cond_0

    .line 49
    .line 50
    move-object v7, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v7, v7, Lpq;->W:Lzr;

    .line 53
    .line 54
    :goto_0
    if-eqz v7, :cond_1

    .line 55
    .line 56
    iget-wide v7, v7, Lzr;->f:J

    .line 57
    .line 58
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    iput-object v7, v0, Lx7;->a:Ljava/lang/Long;

    .line 63
    .line 64
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v8, "DEEP_COPY_VALIDATOR_KEY"

    .line 70
    .line 71
    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    .line 73
    .line 74
    move-object v2, v8

    .line 75
    new-instance v8, Ly7;

    .line 76
    .line 77
    invoke-static {v3, v4}, Lzr;->b(J)Lzr;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-static {v5, v6}, Lzr;->b(J)Lzr;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    move-object v11, v2

    .line 90
    check-cast v11, Lsd;

    .line 91
    .line 92
    iget-object v0, v0, Lx7;->a:Ljava/lang/Long;

    .line 93
    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    move-object v12, v1

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    invoke-static {v2, v3}, Lzr;->b(J)Lzr;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    move-object v12, v0

    .line 107
    :goto_1
    invoke-direct/range {v8 .. v13}, Ly7;-><init>(Lzr;Lzr;Lsd;Lzr;I)V

    .line 108
    .line 109
    .line 110
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 111
    .line 112
    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    .line 114
    .line 115
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 116
    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    .line 119
    .line 120
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 121
    .line 122
    iget v1, p0, Luq;->m0:I

    .line 123
    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const-string v0, "TITLE_TEXT_KEY"

    .line 128
    .line 129
    iget-object v1, p0, Luq;->n0:Ljava/lang/CharSequence;

    .line 130
    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "INPUT_MODE_KEY"

    .line 135
    .line 136
    iget v1, p0, Luq;->p0:I

    .line 137
    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 142
    .line 143
    iget v1, p0, Luq;->q0:I

    .line 144
    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 149
    .line 150
    iget-object v1, p0, Luq;->r0:Ljava/lang/CharSequence;

    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 156
    .line 157
    iget v1, p0, Luq;->s0:I

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 163
    .line 164
    iget-object v1, p0, Luq;->t0:Ljava/lang/CharSequence;

    .line 165
    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 170
    .line 171
    iget v1, p0, Luq;->u0:I

    .line 172
    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 177
    .line 178
    iget-object v1, p0, Luq;->v0:Ljava/lang/CharSequence;

    .line 179
    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 184
    .line 185
    iget v1, p0, Luq;->w0:I

    .line 186
    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 191
    .line 192
    iget-object p0, p0, Luq;->x0:Ljava/lang/CharSequence;

    .line 193
    .line 194
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final w()V
    .locals 13

    .line 1
    invoke-super {p0}, Lef;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lef;->c0:Landroid/app/Dialog;

    .line 5
    .line 6
    const-string v1, " does not have a Dialog."

    .line 7
    .line 8
    const-string v2, "DialogFragment "

    .line 9
    .line 10
    if-eqz v0, :cond_12

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-boolean v3, p0, Luq;->o0:Z

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v3, :cond_c

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Luq;->A0:Lxq;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Luq;->B0:Z

    .line 32
    .line 33
    if-nez v1, :cond_d

    .line 34
    .line 35
    invoke-virtual {p0}, Laj;->B()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget v2, Lnv;->fullscreen_header:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Lnm;->w(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object v2, v5

    .line 65
    :goto_0
    const/4 v3, 0x0

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v6, v3

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    :goto_1
    move v6, v4

    .line 78
    :goto_2
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const v8, 0x1010031

    .line 83
    .line 84
    .line 85
    const/high16 v9, -0x1000000

    .line 86
    .line 87
    invoke-static {v7, v8, v9}, Lvd;->o(Landroid/content/Context;II)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v6, :cond_3

    .line 92
    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .line 99
    const/16 v8, 0x1e

    .line 100
    .line 101
    if-lt v6, v8, :cond_4

    .line 102
    .line 103
    invoke-static {v0, v3}, Ll70;->a(Landroid/view/Window;Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-virtual {v10}, Landroid/view/View;->getSystemUiVisibility()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    or-int/lit16 v11, v11, 0x700

    .line 116
    .line 117
    invoke-virtual {v10, v11}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 118
    .line 119
    .line 120
    :goto_3
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    const/16 v11, 0x1b

    .line 128
    .line 129
    if-ge v6, v11, :cond_5

    .line 130
    .line 131
    const v6, 0x1010452

    .line 132
    .line 133
    .line 134
    invoke-static {v10, v6, v9}, Lvd;->o(Landroid/content/Context;II)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    const/16 v9, 0x80

    .line 139
    .line 140
    invoke-static {v6, v9}, Lja;->d(II)I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    goto :goto_4

    .line 145
    :cond_5
    move v6, v3

    .line 146
    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v6}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-static {v2}, Lvd;->B(I)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-static {v3}, Lvd;->B(I)Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-nez v9, :cond_7

    .line 165
    .line 166
    if-eqz v2, :cond_6

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_6
    move v2, v3

    .line 170
    goto :goto_6

    .line 171
    :cond_7
    :goto_5
    move v2, v4

    .line 172
    :goto_6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    new-instance v10, Lqg;

    .line 177
    .line 178
    invoke-direct {v10, v9}, Lqg;-><init>(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    .line 183
    if-lt v9, v8, :cond_8

    .line 184
    .line 185
    new-instance v9, Lm80;

    .line 186
    .line 187
    invoke-static {v0}, Lg0;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    invoke-direct {v9, v11, v10}, Lm80;-><init>(Landroid/view/WindowInsetsController;Lqg;)V

    .line 192
    .line 193
    .line 194
    iput-object v0, v9, Lm80;->b:Landroid/view/Window;

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_8
    new-instance v9, Lk80;

    .line 198
    .line 199
    invoke-direct {v9, v0, v10}, Lk80;-><init>(Landroid/view/Window;Lqg;)V

    .line 200
    .line 201
    .line 202
    :goto_7
    invoke-virtual {v9, v2}, Lyt;->w(Z)V

    .line 203
    .line 204
    .line 205
    invoke-static {v7}, Lvd;->B(I)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-static {v6}, Lvd;->B(I)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-nez v7, :cond_9

    .line 214
    .line 215
    if-nez v6, :cond_a

    .line 216
    .line 217
    if-eqz v2, :cond_a

    .line 218
    .line 219
    :cond_9
    move v3, v4

    .line 220
    :cond_a
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    new-instance v6, Lqg;

    .line 225
    .line 226
    invoke-direct {v6, v2}, Lqg;-><init>(Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 230
    .line 231
    if-lt v2, v8, :cond_b

    .line 232
    .line 233
    new-instance v2, Lm80;

    .line 234
    .line 235
    invoke-static {v0}, Lg0;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-direct {v2, v7, v6}, Lm80;-><init>(Landroid/view/WindowInsetsController;Lqg;)V

    .line 240
    .line 241
    .line 242
    iput-object v0, v2, Lm80;->b:Landroid/view/Window;

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_b
    new-instance v2, Lk80;

    .line 246
    .line 247
    invoke-direct {v2, v0, v6}, Lk80;-><init>(Landroid/view/Window;Lqg;)V

    .line 248
    .line 249
    .line 250
    :goto_8
    invoke-virtual {v2, v3}, Lyt;->v(Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    .line 263
    new-instance v3, Ltq;

    .line 264
    .line 265
    invoke-direct {v3, v1, v2, v0}, Ltq;-><init>(Landroid/view/View;II)V

    .line 266
    .line 267
    .line 268
    sget-object v0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 269
    .line 270
    invoke-static {v1, v3}, Ll50;->u(Landroid/view/View;Lbt;)V

    .line 271
    .line 272
    .line 273
    iput-boolean v4, p0, Luq;->B0:Z

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_c
    const/4 v3, -0x2

    .line 277
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Laj;->A()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    sget v6, Lzu;->mtrl_calendar_dialog_background_inset:I

    .line 289
    .line 290
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    new-instance v3, Landroid/graphics/Rect;

    .line 295
    .line 296
    invoke-direct {v3, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    .line 298
    .line 299
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    .line 300
    .line 301
    iget-object v8, p0, Luq;->A0:Lxq;

    .line 302
    .line 303
    move v10, v9

    .line 304
    move v11, v9

    .line 305
    move v12, v9

    .line 306
    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    new-instance v6, Lfm;

    .line 317
    .line 318
    iget-object v7, p0, Lef;->c0:Landroid/app/Dialog;

    .line 319
    .line 320
    if-eqz v7, :cond_11

    .line 321
    .line 322
    invoke-direct {v6, v7, v3}, Lfm;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    .line 327
    .line 328
    :cond_d
    :goto_9
    invoke-virtual {p0}, Laj;->A()Landroid/content/Context;

    .line 329
    .line 330
    .line 331
    iget v0, p0, Luq;->i0:I

    .line 332
    .line 333
    if-eqz v0, :cond_10

    .line 334
    .line 335
    invoke-virtual {p0}, Luq;->F()V

    .line 336
    .line 337
    .line 338
    iget-object v1, p0, Luq;->k0:Ly7;

    .line 339
    .line 340
    new-instance v2, Lpq;

    .line 341
    .line 342
    invoke-direct {v2}, Lpq;-><init>()V

    .line 343
    .line 344
    .line 345
    new-instance v3, Landroid/os/Bundle;

    .line 346
    .line 347
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 348
    .line 349
    .line 350
    const-string v6, "THEME_RES_ID_KEY"

    .line 351
    .line 352
    invoke-virtual {v3, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 353
    .line 354
    .line 355
    const-string v7, "GRID_SELECTOR_KEY"

    .line 356
    .line 357
    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 358
    .line 359
    .line 360
    const-string v7, "CALENDAR_CONSTRAINTS_KEY"

    .line 361
    .line 362
    invoke-virtual {v3, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 363
    .line 364
    .line 365
    const-string v8, "DAY_VIEW_DECORATOR_KEY"

    .line 366
    .line 367
    invoke-virtual {v3, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 368
    .line 369
    .line 370
    const-string v8, "CURRENT_MONTH_KEY"

    .line 371
    .line 372
    iget-object v1, v1, Ly7;->d:Lzr;

    .line 373
    .line 374
    invoke-virtual {v3, v8, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v3}, Laj;->D(Landroid/os/Bundle;)V

    .line 378
    .line 379
    .line 380
    iput-object v2, p0, Luq;->l0:Lpq;

    .line 381
    .line 382
    iget v1, p0, Luq;->p0:I

    .line 383
    .line 384
    if-ne v1, v4, :cond_e

    .line 385
    .line 386
    invoke-virtual {p0}, Luq;->F()V

    .line 387
    .line 388
    .line 389
    iget-object v1, p0, Luq;->k0:Ly7;

    .line 390
    .line 391
    new-instance v2, Lyq;

    .line 392
    .line 393
    invoke-direct {v2}, Lyq;-><init>()V

    .line 394
    .line 395
    .line 396
    new-instance v3, Landroid/os/Bundle;

    .line 397
    .line 398
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 402
    .line 403
    .line 404
    const-string v0, "DATE_SELECTOR_KEY"

    .line 405
    .line 406
    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, v3}, Laj;->D(Landroid/os/Bundle;)V

    .line 413
    .line 414
    .line 415
    :cond_e
    iput-object v2, p0, Luq;->j0:Lau;

    .line 416
    .line 417
    iget-object v0, p0, Luq;->y0:Landroid/widget/TextView;

    .line 418
    .line 419
    iget v1, p0, Luq;->p0:I

    .line 420
    .line 421
    if-ne v1, v4, :cond_f

    .line 422
    .line 423
    invoke-virtual {p0}, Laj;->A()Landroid/content/Context;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 436
    .line 437
    const/4 v2, 0x2

    .line 438
    if-ne v1, v2, :cond_f

    .line 439
    .line 440
    iget-object v1, p0, Luq;->D0:Ljava/lang/CharSequence;

    .line 441
    .line 442
    goto :goto_a

    .line 443
    :cond_f
    iget-object v1, p0, Luq;->C0:Ljava/lang/CharSequence;

    .line 444
    .line 445
    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0}, Luq;->F()V

    .line 449
    .line 450
    .line 451
    throw v5

    .line 452
    :cond_10
    invoke-virtual {p0}, Luq;->F()V

    .line 453
    .line 454
    .line 455
    throw v5

    .line 456
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 457
    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p0

    .line 473
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw v0

    .line 477
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 478
    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p0

    .line 494
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw v0
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Luq;->j0:Lau;

    .line 2
    .line 3
    iget-object v0, v0, Lau;->T:Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lef;->x()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
