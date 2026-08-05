.class public final synthetic Llp;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/pulse/live/ui/MainActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/pulse/live/ui/MainActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Llp;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Llp;->b:Lcom/pulse/live/ui/MainActivity;

    .line 4
    .line 5
    iput-object p2, p0, Llp;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Llp;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Llp;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Llp;->b:Lcom/pulse/live/ui/MainActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/pulse/live/ui/MainActivity;->L:I

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/pulse/live/ui/MainActivity;->w(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget v0, Lcom/pulse/live/ui/MainActivity;->L:I

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/pulse/live/ui/MainActivity;->w(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
