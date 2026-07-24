.class public final synthetic Lbj;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lac;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf3;


# direct methods
.method public synthetic constructor <init>(Lf3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lbj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lbj;->b:Lf3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lbj;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lbj;->b:Lf3;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/content/Intent;

    .line 9
    .line 10
    iget-object p0, p0, Lf3;->s:Lo0;

    .line 11
    .line 12
    invoke-virtual {p0}, Lo0;->u()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    .line 17
    .line 18
    iget-object p0, p0, Lf3;->s:Lo0;

    .line 19
    .line 20
    invoke-virtual {p0}, Lo0;->u()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
