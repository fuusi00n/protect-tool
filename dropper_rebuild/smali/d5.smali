.class public final Ld5;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/widget/AdapterView$OnItemClickListener;

.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ld5;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ld5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    .line 1
    iget p1, p0, Ld5;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ld5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Leq;

    .line 9
    .line 10
    iget-object p1, p0, Leq;->e:Luo;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-gez p3, :cond_1

    .line 14
    .line 15
    iget-object v1, p1, Luo;->z:Lr4;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p1, Luo;->c:Lgg;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-static {p0, v1}, Leq;->a(Leq;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_7

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    if-gez p3, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    move-object v4, p2

    .line 55
    move v5, p3

    .line 56
    move-wide v6, p4

    .line 57
    goto :goto_6

    .line 58
    :cond_3
    :goto_2
    iget-object p0, p1, Luo;->z:Lr4;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_4

    .line 65
    .line 66
    move-object p2, v0

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    iget-object p0, p1, Luo;->c:Lgg;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    move-object p2, p0

    .line 75
    :goto_3
    iget-object p0, p1, Luo;->z:Lr4;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_5

    .line 82
    .line 83
    const/4 p0, -0x1

    .line 84
    :goto_4
    move p3, p0

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    iget-object p0, p1, Luo;->c:Lgg;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    goto :goto_4

    .line 93
    :goto_5
    iget-object p0, p1, Luo;->z:Lr4;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_6

    .line 100
    .line 101
    const-wide/high16 p4, -0x8000000000000000L

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    iget-object p0, p1, Luo;->c:Lgg;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 107
    .line 108
    .line 109
    move-result-wide p4

    .line 110
    goto :goto_1

    .line 111
    :goto_6
    iget-object v3, p1, Luo;->c:Lgg;

    .line 112
    .line 113
    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 114
    .line 115
    .line 116
    :cond_7
    invoke-virtual {p1}, Luo;->dismiss()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_0
    check-cast p0, Lf5;

    .line 121
    .line 122
    iget-object p1, p0, Lf5;->G:Li5;

    .line 123
    .line 124
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 128
    .line 129
    .line 130
    move-result-object p4

    .line 131
    if-eqz p4, :cond_8

    .line 132
    .line 133
    iget-object p4, p0, Lf5;->D:Lc5;

    .line 134
    .line 135
    invoke-virtual {p4, p3}, Lc5;->getItemId(I)J

    .line 136
    .line 137
    .line 138
    move-result-wide p4

    .line 139
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 140
    .line 141
    .line 142
    :cond_8
    invoke-virtual {p0}, Luo;->dismiss()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
