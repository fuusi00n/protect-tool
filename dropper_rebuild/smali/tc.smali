.class public final Ltc;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ljava/util/Comparator;

.field public final synthetic a:I

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltc;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget p0, p0, Ltc;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, -0x1

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    .line 11
    check-cast p2, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :goto_0
    sub-int/2addr p0, p1

    .line 22
    return p0

    .line 23
    :pswitch_0
    check-cast p1, Ll00;

    .line 24
    .line 25
    check-cast p2, Ll00;

    .line 26
    .line 27
    iget p0, p1, Ll00;->b:I

    .line 28
    .line 29
    iget p1, p2, Ll00;->b:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_1
    check-cast p1, Ldl;

    .line 33
    .line 34
    check-cast p2, Ldl;

    .line 35
    .line 36
    iget-object p0, p1, Ldl;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    move v3, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move v3, v1

    .line 43
    :goto_1
    iget-object v4, p2, Ldl;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    move v4, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    move v4, v1

    .line 50
    :goto_2
    if-eq v3, v4, :cond_2

    .line 51
    .line 52
    if-nez p0, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_2
    iget-boolean p0, p1, Ldl;->a:Z

    .line 56
    .line 57
    iget-boolean v3, p2, Ldl;->a:Z

    .line 58
    .line 59
    if-eq p0, v3, :cond_4

    .line 60
    .line 61
    if-eqz p0, :cond_7

    .line 62
    .line 63
    :cond_3
    move v0, v2

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    iget p0, p2, Ldl;->b:I

    .line 66
    .line 67
    iget v0, p1, Ldl;->b:I

    .line 68
    .line 69
    sub-int v0, p0, v0

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    iget p0, p1, Ldl;->c:I

    .line 75
    .line 76
    iget p1, p2, Ldl;->c:I

    .line 77
    .line 78
    sub-int v0, p0, p1

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_6
    move v0, v1

    .line 84
    :cond_7
    :goto_3
    return v0

    .line 85
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 86
    .line 87
    check-cast p2, Landroid/view/View;

    .line 88
    .line 89
    sget-object p0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 90
    .line 91
    invoke-static {p1}, Ll50;->m(Landroid/view/View;)F

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-static {p2}, Ll50;->m(Landroid/view/View;)F

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    cmpl-float p2, p0, p1

    .line 100
    .line 101
    if-lez p2, :cond_8

    .line 102
    .line 103
    move v0, v2

    .line 104
    goto :goto_4

    .line 105
    :cond_8
    cmpg-float p0, p0, p1

    .line 106
    .line 107
    if-gez p0, :cond_9

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_9
    move v0, v1

    .line 111
    :goto_4
    return v0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
