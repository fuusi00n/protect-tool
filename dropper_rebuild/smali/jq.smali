.class public final Ljq;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final e:Le;


# instance fields
.field public final a:Lvc;

.field public final b:Lvc;

.field public final c:Lvc;

.field public final d:Lvc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Le;-><init>(F)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ljq;->e:Le;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvc;Lvc;Lvc;Lvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljq;->a:Lvc;

    .line 5
    .line 6
    iput-object p3, p0, Ljq;->b:Lvc;

    .line 7
    .line 8
    iput-object p4, p0, Ljq;->c:Lvc;

    .line 9
    .line 10
    iput-object p2, p0, Ljq;->d:Lvc;

    .line 11
    .line 12
    return-void
.end method
