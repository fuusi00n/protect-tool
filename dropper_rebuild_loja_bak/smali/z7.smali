.class public abstract Lz7;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lcn;
.implements Ljava/io/Serializable;


# instance fields
.field public transient a:Lcn;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz7;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lz7;->c:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, Lz7;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lz7;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lz7;->f:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final c()Lr9;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz7;->f:Z

    .line 2
    .line 3
    iget-object p0, p0, Lz7;->c:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lox;->a:Lpx;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Lrt;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lrt;-><init>(Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-static {p0}, Lox;->a(Ljava/lang/Class;)Ls9;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
