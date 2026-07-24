.class public final Lls;
.super Lnd;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 15
    sget-object p1, Lmd;->b:Lmd;

    invoke-direct {p0, p1}, Lls;-><init>(Lnd;)V

    return-void
.end method

.method public constructor <init>(Lnd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lnd;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lnd;->a:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    iget-object p1, p1, Lnd;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
