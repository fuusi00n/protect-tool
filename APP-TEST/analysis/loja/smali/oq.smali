.class public final Loq;
.super Lzw;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final synthetic a:Lcs;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Lpq;


# direct methods
.method public constructor <init>(Lpq;Lcs;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loq;->c:Lpq;

    .line 5
    .line 6
    iput-object p2, p0, Loq;->a:Lcs;

    .line 7
    .line 8
    iput-object p3, p0, Loq;->b:Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Loq;->b:Lcom/google/android/material/button/MaterialButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    iget-object p1, p0, Loq;->a:Lcs;

    .line 2
    .line 3
    iget-object p1, p1, Lcs;->c:Ly7;

    .line 4
    .line 5
    iget-object p3, p0, Loq;->c:Lpq;

    .line 6
    .line 7
    iget-object v0, p3, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-gez p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2}, Lww;->v()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p2, v0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(IIZ)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    const/4 p2, -0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p2}, Lww;->H(Landroid/view/View;)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    :goto_0
    iget-object v0, p1, Ly7;->a:Lzr;

    .line 46
    .line 47
    iget-object v0, v0, Lzr;->a:Ljava/util/Calendar;

    .line 48
    .line 49
    invoke-static {v0}, Lm40;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x2

    .line 54
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lzr;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Lzr;-><init>(Ljava/util/Calendar;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, p3, Lpq;->W:Lzr;

    .line 63
    .line 64
    iget-object p1, p1, Ly7;->a:Lzr;

    .line 65
    .line 66
    iget-object p1, p1, Lzr;->a:Ljava/util/Calendar;

    .line 67
    .line 68
    invoke-static {p1}, Lm40;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 73
    .line 74
    .line 75
    const/4 p2, 0x5

    .line 76
    const/4 p3, 0x1

    .line 77
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lm40;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    .line 88
    .line 89
    .line 90
    const/4 p3, 0x7

    .line 91
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->getMaximum(I)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide p1

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    sget-object v0, Lm40;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    .line 110
    const-string v0, "yMMMM"

    .line 111
    .line 112
    invoke-static {v0, p3}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    const-string v0, "UTC"

    .line 117
    .line 118
    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p3, v0}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 123
    .line 124
    .line 125
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    .line 126
    .line 127
    invoke-virtual {p3, v0}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Ljava/util/Date;

    .line 131
    .line 132
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p0, p0, Loq;->b:Lcom/google/android/material/button/MaterialButton;

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method
