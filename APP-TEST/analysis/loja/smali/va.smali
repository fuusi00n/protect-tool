.class public final synthetic Lva;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lmt;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf3;


# direct methods
.method public synthetic constructor <init>(Lf3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lva;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lva;->b:Lf3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ldb;)V
    .locals 10

    .line 1
    iget v0, p0, Lva;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lva;->b:Lf3;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lf3;->s:Lo0;

    .line 10
    .line 11
    iget-object p0, p0, Lo0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcj;

    .line 14
    .line 15
    iget-object p1, p0, Lcj;->H:Lqj;

    .line 16
    .line 17
    invoke-virtual {p1, p0, p0, v1}, Lpj;->b(Lcj;Lvd;Laj;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Ldb;->d:Lcz;

    .line 25
    .line 26
    iget-object p1, p1, Lcz;->b:Lm3;

    .line 27
    .line 28
    const-string v0, "android:support:activity-result"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lm3;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_5

    .line 35
    .line 36
    iget-object p0, p0, Ldb;->i:Lbb;

    .line 37
    .line 38
    iget-object v0, p0, Lbb;->b:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    iget-object v2, p0, Lbb;->a:Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    iget-object v3, p0, Lbb;->g:Landroid/os/Bundle;

    .line 43
    .line 44
    const-string v4, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 45
    .line 46
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v5, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 51
    .line 52
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_5

    .line 57
    .line 58
    if-nez v4, :cond_0

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_0
    const-string v6, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 62
    .line 63
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    iget-object v7, p0, Lbb;->d:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    const-string v6, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 75
    .line 76
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/4 v6, 0x0

    .line 90
    :goto_0
    if-ge v6, p1, :cond_5

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_4

    .line 103
    .line 104
    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    check-cast v8, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-nez v7, :cond_4

    .line 115
    .line 116
    instance-of v7, v2, Ldn;

    .line 117
    .line 118
    if-nez v7, :cond_3

    .line 119
    .line 120
    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    const-string p0, "kotlin.collections.MutableMap"

    .line 125
    .line 126
    invoke-static {v2, p0}, Ld40;->U(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v1

    .line 130
    :cond_4
    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    check-cast v7, Ljava/lang/Number;

    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    check-cast v8, Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    iget-object v9, p0, Lbb;->b:Ljava/util/LinkedHashMap;

    .line 164
    .line 165
    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    add-int/lit8 v6, v6, 0x1

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_5
    :goto_2
    return-void

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
