.class public final Le9;
.super Lum;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ld9;


# instance fields
.field public final h:Lbn;


# direct methods
.method public constructor <init>(Lbn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lep;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le9;->h:Lbn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lxm;->q()Lbn;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lbn;->p(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le9;->h:Lbn;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxm;->q()Lbn;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Lbn;->m(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
