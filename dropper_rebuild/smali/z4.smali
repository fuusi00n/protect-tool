.class public final Lz4;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lz4;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lz4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .line 1
    iget v0, p0, Lz4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lz4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, La10;

    .line 9
    .line 10
    iget-object p0, v1, La10;->h:Ltr;

    .line 11
    .line 12
    invoke-virtual {v1}, La10;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Luo;->y:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, v1, La10;->m:Landroid/view/View;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Luo;->f()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {v1}, La10;->dismiss()V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_1
    return-void

    .line 41
    :pswitch_0
    check-cast v1, Lr8;

    .line 42
    .line 43
    iget-object p0, v1, Lr8;->h:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Lr8;->b()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-lez v0, :cond_5

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lq8;

    .line 63
    .line 64
    iget-object v2, v2, Lq8;->a:Ltr;

    .line 65
    .line 66
    iget-boolean v2, v2, Luo;->y:Z

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    iget-object v2, v1, Lr8;->o:Landroid/view/View;

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    :goto_2
    if-ge v0, v1, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    check-cast v2, Lq8;

    .line 94
    .line 95
    iget-object v2, v2, Lq8;->a:Ltr;

    .line 96
    .line 97
    invoke-virtual {v2}, Luo;->f()V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lr8;->dismiss()V

    .line 102
    .line 103
    .line 104
    :cond_5
    return-void

    .line 105
    :pswitch_1
    check-cast v1, Lf5;

    .line 106
    .line 107
    iget-object p0, v1, Lf5;->G:Li5;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    iget-object v0, v1, Lf5;->E:Landroid/graphics/Rect;

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_6

    .line 122
    .line 123
    invoke-virtual {v1}, Lf5;->s()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Luo;->f()V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_6
    invoke-virtual {v1}, Luo;->dismiss()V

    .line 131
    .line 132
    .line 133
    :goto_4
    return-void

    .line 134
    :pswitch_2
    check-cast v1, Li5;

    .line 135
    .line 136
    invoke-virtual {v1}, Li5;->getInternalPopup()Lh5;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-interface {v0}, Lh5;->b()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_7

    .line 145
    .line 146
    iget-object v0, v1, Li5;->f:Lh5;

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getTextDirection()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getTextAlignment()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-interface {v0, v2, v3}, Lh5;->e(II)V

    .line 157
    .line 158
    .line 159
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 166
    .line 167
    .line 168
    :cond_8
    return-void

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
