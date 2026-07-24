.class public final Lnp;
.super Lnc;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public d:J

.field public e:J

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/turbo/live/ui/MainActivity;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/turbo/live/ui/MainActivity;Lnc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnp;->g:Lcom/turbo/live/ui/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lnc;-><init>(Lmc;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iput-object p1, p0, Lnp;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnp;->h:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnp;->h:I

    .line 9
    .line 10
    iget-object p1, p0, Lnp;->g:Lcom/turbo/live/ui/MainActivity;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-static {p1, v0, v1, p0}, Lcom/turbo/live/ui/MainActivity;->s(Lcom/turbo/live/ui/MainActivity;JLnc;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
