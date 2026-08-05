.class public final Lpp;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final synthetic a:Lcom/pulse/live/ui/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pulse/live/ui/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpp;->a:Lcom/pulse/live/ui/MainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lpp;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lpp;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 21
    .line 22
    invoke-static {p2, v0}, Lnm;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 29
    .line 30
    invoke-static {p2, v0}, Lnm;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    :cond_1
    iget-object p2, p0, Lpp;->a:Lcom/pulse/live/ui/MainActivity;

    .line 37
    .line 38
    iget-object v0, p2, Lcom/pulse/live/ui/MainActivity;->B:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v1, Lop;

    .line 41
    .line 42
    iget-object v2, p0, Lpp;->b:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p0, p0, Lpp;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {v1, p1, v2, p2, p0}, Lop;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pulse/live/ui/MainActivity;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method
