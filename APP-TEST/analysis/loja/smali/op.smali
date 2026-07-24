.class public final synthetic Lop;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/turbo/live/ui/MainActivity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/turbo/live/ui/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lop;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lop;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lop;->c:Lcom/turbo/live/ui/MainActivity;

    .line 9
    .line 10
    iput-object p4, p0, Lop;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lop;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lop;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Lop;->c:Lcom/turbo/live/ui/MainActivity;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sget p0, Lcom/turbo/live/ui/MainActivity;->L:I

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Lcom/turbo/live/ui/MainActivity;->x(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p0, p0, Lop;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    sget p0, Lcom/turbo/live/ui/MainActivity;->L:I

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Lcom/turbo/live/ui/MainActivity;->y(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
