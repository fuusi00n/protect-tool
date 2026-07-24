.class public final synthetic Lab;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lab;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lab;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lab;->c:I

    .line 6
    .line 7
    iput-object p3, p0, Lab;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lab;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lab;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lab;->c:I

    .line 6
    .line 7
    iget-object p0, p0, Lab;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lye;

    .line 13
    .line 14
    iget-object p0, p0, Lye;->a:Lo0;

    .line 15
    .line 16
    invoke-virtual {p0, v2, v1}, Lo0;->v(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p0, Lbb;

    .line 21
    .line 22
    check-cast v1, Landroid/content/IntentSender$SendIntentException;

    .line 23
    .line 24
    new-instance v0, Landroid/content/Intent;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v2, v1, v0}, Lbb;->a(IILandroid/content/Intent;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    check-cast p0, Lbb;

    .line 47
    .line 48
    check-cast v1, Lz1;

    .line 49
    .line 50
    iget-object v0, v1, Lz1;->a:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v1, p0, Lbb;->a:Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iget-object v2, p0, Lbb;->e:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lc2;

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    iget-object v3, v2, Lc2;->a:Ly1;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v3, 0x0

    .line 81
    :goto_0
    if-nez v3, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Lbb;->g:Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lbb;->f:Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object v2, v2, Lc2;->a:Ly1;

    .line 95
    .line 96
    iget-object p0, p0, Lbb;->d:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    invoke-interface {v2, v0}, Ly1;->a(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_1
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
