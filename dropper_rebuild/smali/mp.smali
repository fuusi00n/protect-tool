.class public final synthetic Lmp;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/turbo/live/ui/MainActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/turbo/live/ui/MainActivity;II)V
    .locals 0

    .line 1
    iput p3, p0, Lmp;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lmp;->b:Lcom/turbo/live/ui/MainActivity;

    .line 4
    .line 5
    iput p2, p0, Lmp;->c:I

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
    .locals 3

    .line 1
    iget v0, p0, Lmp;->a:I

    .line 2
    .line 3
    iget v1, p0, Lmp;->c:I

    .line 4
    .line 5
    iget-object p0, p0, Lmp;->b:Lcom/turbo/live/ui/MainActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/turbo/live/ui/MainActivity;->L:I

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/turbo/live/ui/MainActivity;->t(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget v0, Lcom/turbo/live/ui/MainActivity;->L:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/turbo/live/ui/MainActivity;->A()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lez v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/turbo/live/ui/MainActivity;->y(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lez v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/turbo/live/ui/MainActivity;->x(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
