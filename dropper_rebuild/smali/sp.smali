.class public final synthetic Lsp;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lpk;


# instance fields
.field public final synthetic a:Lcom/turbo/live/ui/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/turbo/live/ui/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsp;->a:Lcom/turbo/live/ui/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    mul-int/lit8 p1, p1, 0xf

    .line 8
    .line 9
    div-int/lit8 p1, p1, 0x64

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x2d

    .line 12
    .line 13
    iget-object p0, p0, Lsp;->a:Lcom/turbo/live/ui/MainActivity;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/turbo/live/ui/MainActivity;->B:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v1, Lmp;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, p0, p1, v2}, Lmp;-><init>(Lcom/turbo/live/ui/MainActivity;II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    sget-object p0, Lqg;->j:Lqg;

    .line 27
    .line 28
    return-object p0
.end method
