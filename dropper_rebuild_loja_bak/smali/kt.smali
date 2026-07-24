.class public final synthetic Lkt;
.super Lbl;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lek;


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    iput p8, p0, Lkt;->i:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Lbl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkt;->i:I

    .line 2
    .line 3
    iget-object p0, p0, Lz7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Llt;

    .line 9
    .line 10
    invoke-virtual {p0}, Llt;->d()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lqg;->j:Lqg;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_0
    check-cast p0, Llt;

    .line 17
    .line 18
    invoke-virtual {p0}, Llt;->d()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lqg;->j:Lqg;

    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
