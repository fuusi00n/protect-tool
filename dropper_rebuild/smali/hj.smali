.class public final Lhj;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ly1;

.field public final synthetic a:I

.field public final synthetic b:Lpj;

.method public synthetic constructor <init>(Lpj;I)V
    .locals 0

    .line 1
    iput p2, p0, Lhj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lhj;->b:Lpj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lhj;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object p0, p0, Lhj;->b:Lpj;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lx1;

    .line 10
    .line 11
    iget-object v0, p0, Lpj;->C:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmj;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v0, Lmj;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p0, p0, Lpj;->c:Lle;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lle;->d(Ljava/lang/String;)Laj;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, p1, Lx1;->a:I

    .line 34
    .line 35
    iget-object p1, p1, Lx1;->b:Landroid/content/Intent;

    .line 36
    .line 37
    invoke-static {v1}, Lpj;->E(I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Laj;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void

    .line 50
    :pswitch_0
    check-cast p1, Lx1;

    .line 51
    .line 52
    iget-object v0, p0, Lpj;->C:Ljava/util/ArrayDeque;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lmj;

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v0, v0, Lmj;->a:Ljava/lang/String;

    .line 64
    .line 65
    iget-object p0, p0, Lpj;->c:Lle;

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lle;->d(Ljava/lang/String;)Laj;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-nez p0, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    iget v0, p1, Lx1;->a:I

    .line 75
    .line 76
    iget-object p1, p1, Lx1;->b:Landroid/content/Intent;

    .line 77
    .line 78
    invoke-static {v1}, Lpj;->E(I)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0}, Laj;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_1
    return-void

    .line 91
    :pswitch_1
    check-cast p1, Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v1, 0x0

    .line 98
    new-array v2, v1, [Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, [Ljava/lang/String;

    .line 105
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    new-array p1, p1, [I

    .line 120
    .line 121
    move v2, v1

    .line 122
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-ge v2, v3, :cond_7

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    move v3, v1

    .line 141
    goto :goto_3

    .line 142
    :cond_6
    const/4 v3, -0x1

    .line 143
    :goto_3
    aput v3, p1, v2

    .line 144
    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    iget-object p1, p0, Lpj;->C:Ljava/util/ArrayDeque;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lmj;

    .line 155
    .line 156
    if-nez p1, :cond_8

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_8
    iget-object p1, p1, Lmj;->a:Ljava/lang/String;

    .line 160
    .line 161
    iget-object p0, p0, Lpj;->c:Lle;

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Lle;->d(Ljava/lang/String;)Laj;

    .line 164
    .line 165
    .line 166
    :goto_4
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
