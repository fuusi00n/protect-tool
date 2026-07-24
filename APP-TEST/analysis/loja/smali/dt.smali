.class public final Ldt;
.super Lhn;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lek;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Llt;


# direct methods
.method public synthetic constructor <init>(Llt;I)V
    .locals 0

    .line 1
    iput p2, p0, Ldt;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ldt;->c:Llt;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lhn;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ldt;->b:I

    .line 2
    .line 3
    iget-object p0, p0, Ldt;->c:Llt;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Llt;->b()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lqg;->j:Lqg;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Llt;->a()V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lqg;->j:Lqg;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    invoke-virtual {p0}, Llt;->b()V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lqg;->j:Lqg;

    .line 24
    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
