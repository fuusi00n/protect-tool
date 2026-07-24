.class public final synthetic Lwa;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lqn;


# instance fields
.field public final synthetic a:Llt;

.field public final synthetic b:Lf3;


# direct methods
.method public synthetic constructor <init>(Llt;Lf3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwa;->a:Llt;

    .line 5
    .line 6
    iput-object p2, p0, Lwa;->b:Lf3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lrn;Lon;)V
    .locals 0

    .line 1
    sget-object p1, Lon;->ON_CREATE:Lon;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lxa;->a:Lxa;

    .line 6
    .line 7
    iget-object p2, p0, Lwa;->b:Lf3;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lxa;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lwa;->a:Llt;

    .line 17
    .line 18
    iput-object p1, p0, Llt;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 19
    .line 20
    iget-boolean p1, p0, Llt;->g:Z

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Llt;->c(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
