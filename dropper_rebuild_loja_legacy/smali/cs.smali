.class public final Lcs;
.super Low;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final c:Ly7;

.field public final d:Lo0;

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Ly7;Lo0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Low;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Ly7;->a:Lzr;

    .line 5
    .line 6
    iget-object v1, p2, Ly7;->b:Lzr;

    .line 7
    .line 8
    iget-object v2, p2, Ly7;->d:Lzr;

    .line 9
    .line 10
    iget-object v0, v0, Lzr;->a:Ljava/util/Calendar;

    .line 11
    .line 12
    iget-object v3, v2, Lzr;->a:Ljava/util/Calendar;

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v3, 0x0

    .line 19
    if-gtz v0, :cond_3

    .line 20
    .line 21
    iget-object v0, v2, Lzr;->a:Ljava/util/Calendar;

    .line 22
    .line 23
    iget-object v1, v1, Lzr;->a:Ljava/util/Calendar;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-gtz v0, :cond_2

    .line 30
    .line 31
    sget v0, Las;->d:I

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget v2, Lzu;->mtrl_calendar_day_height:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    mul-int/2addr v1, v0

    .line 44
    const v0, 0x101020d

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Luq;->H(Landroid/content/Context;I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget v0, Lzu;->mtrl_calendar_day_height:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 p1, 0x0

    .line 65
    :goto_0
    add-int/2addr v1, p1

    .line 66
    iput v1, p0, Lcs;->e:I

    .line 67
    .line 68
    iput-object p2, p0, Lcs;->c:Ly7;

    .line 69
    .line 70
    iput-object p3, p0, Lcs;->d:Lo0;

    .line 71
    .line 72
    iget-object p1, p0, Low;->a:Lpw;

    .line 73
    .line 74
    invoke-virtual {p1}, Lpw;->a()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_1

    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Low;->b:Z

    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    const-string p0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    .line 85
    .line 86
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v3

    .line 90
    :cond_2
    const-string p0, "currentPage cannot be after lastPage"

    .line 91
    .line 92
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v3

    .line 96
    :cond_3
    const-string p0, "firstPage cannot be after currentPage"

    .line 97
    .line 98
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v3
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcs;->c:Ly7;

    .line 2
    .line 3
    iget p0, p0, Ly7;->g:I

    .line 4
    .line 5
    return p0
.end method

.method public final b(I)J
    .locals 2

    .line 1
    iget-object p0, p0, Lcs;->c:Ly7;

    .line 2
    .line 3
    iget-object p0, p0, Ly7;->a:Lzr;

    .line 4
    .line 5
    iget-object p0, p0, Lzr;->a:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-static {p0}, Lm40;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x5

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lm40;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x7

    .line 31
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getMaximum(I)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    return-wide p0
.end method

.method public final c(Lkx;I)V
    .locals 2

    .line 1
    check-cast p1, Lbs;

    .line 2
    .line 3
    iget-object p0, p0, Lcs;->c:Ly7;

    .line 4
    .line 5
    iget-object v0, p0, Ly7;->a:Lzr;

    .line 6
    .line 7
    iget-object v0, v0, Lzr;->a:Ljava/util/Calendar;

    .line 8
    .line 9
    invoke-static {v0}, Lm40;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lzr;

    .line 18
    .line 19
    invoke-direct {p2, v0}, Lzr;-><init>(Ljava/util/Calendar;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lbs;->t:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {p2}, Lzr;->c()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lbs;->u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 32
    .line 33
    sget v0, Lnv;->month_grid:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Las;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Las;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Las;->a:Lzr;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Lzr;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Las;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :cond_0
    new-instance p1, Las;

    .line 72
    .line 73
    invoke-direct {p1, p2, p0}, Las;-><init>(Lzr;Ly7;)V

    .line 74
    .line 75
    .line 76
    throw v1
.end method

.method public final d(Landroid/view/ViewGroup;)Lkx;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lrv;->mtrl_calendar_month_labeled:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const v1, 0x101020d

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1}, Luq;->H(Landroid/content/Context;I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Lxw;

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    iget p0, p0, Lcs;->e:I

    .line 35
    .line 36
    invoke-direct {p1, v1, p0}, Lxw;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Lbs;

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-direct {p0, v0, p1}, Lbs;-><init>(Landroid/widget/LinearLayout;Z)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_0
    new-instance p0, Lbs;

    .line 50
    .line 51
    invoke-direct {p0, v0, v2}, Lbs;-><init>(Landroid/widget/LinearLayout;Z)V

    .line 52
    .line 53
    .line 54
    return-object p0
.end method
