.class public final Ly0;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ly0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ly0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Ly0;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Ly0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->L:Lh30;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lh30;->b:Lir;

    .line 18
    .line 19
    :goto_0
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lir;->collapseActionView()Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void

    .line 25
    :pswitch_0
    check-cast p0, Lpq;

    .line 26
    .line 27
    iget p1, p0, Lpq;->X:I

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    if-ne p1, v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lpq;->F(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lpq;->F(I)V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_1
    return-void

    .line 42
    :pswitch_1
    check-cast p0, Ln2;

    .line 43
    .line 44
    iget-object p1, p0, Ln2;->v:Ll2;

    .line 45
    .line 46
    iget-object p0, p0, Ln2;->b:Lp2;

    .line 47
    .line 48
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_2
    check-cast p0, Lp1;

    .line 57
    .line 58
    invoke-virtual {p0}, Lp1;->a()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
