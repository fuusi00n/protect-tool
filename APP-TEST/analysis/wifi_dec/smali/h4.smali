.class public final synthetic Lh4;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lfn;


# instance fields
.field public final synthetic a:Lp2;


# direct methods
.method public synthetic constructor <init>(Lp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh4;->a:Lp2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lh4;->a:Lp2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lp2;->j(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
