.class public final Lcom/turbo/live/service/SecureService;
.super Landroid/net/VpnService;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final synthetic h:I


# instance fields
.field public a:Landroid/os/ParcelFileDescriptor;

.field public b:Ljava/lang/Thread;

.field public volatile c:Z

.field public final d:I

.field public final e:[B

.field public final f:[B

.field public final g:[[B


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xe7

    .line 5
    .line 6
    iput v0, p0, Lcom/turbo/live/service/SecureService;->d:I

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/turbo/live/service/SecureService;->e:[B

    .line 16
    .line 17
    const/4 v0, 0x7

    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_1

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/turbo/live/service/SecureService;->f:[B

    .line 24
    .line 25
    const/16 v0, 0x16

    .line 26
    .line 27
    new-array v1, v0, [B

    .line 28
    .line 29
    fill-array-data v1, :array_2

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x13

    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    fill-array-data v2, :array_3

    .line 37
    .line 38
    .line 39
    new-array v0, v0, [B

    .line 40
    .line 41
    fill-array-data v0, :array_4

    .line 42
    .line 43
    .line 44
    const/16 v3, 0x15

    .line 45
    .line 46
    new-array v3, v3, [B

    .line 47
    .line 48
    fill-array-data v3, :array_5

    .line 49
    .line 50
    .line 51
    const/16 v4, 0x19

    .line 52
    .line 53
    new-array v4, v4, [B

    .line 54
    .line 55
    fill-array-data v4, :array_6

    .line 56
    .line 57
    .line 58
    filled-new-array {v1, v2, v0, v3, v4}, [[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/turbo/live/service/SecureService;->g:[[B

    .line 63
    .line 64
    return-void

    .line 65
    :array_0
    .array-data 1
        -0x2at
        -0x29t
        -0x37t
        -0x29t
        -0x37t
        -0x29t
        -0x37t
        -0x2bt
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 1
        -0x29t
        -0x37t
        -0x29t
        -0x37t
        -0x29t
        -0x37t
        -0x29t
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_2
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x80t
        -0x78t
        -0x78t
        -0x80t
        -0x75t
        -0x7et
        -0x37t
        -0x7at
        -0x77t
        -0x7dt
        -0x6bt
        -0x78t
        -0x72t
        -0x7dt
        -0x37t
        -0x80t
        -0x76t
        -0x6ct
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    nop

    .line 97
    :array_3
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x7at
        -0x77t
        -0x7dt
        -0x6bt
        -0x78t
        -0x72t
        -0x7dt
        -0x37t
        -0x6ft
        -0x7et
        -0x77t
        -0x7dt
        -0x72t
        -0x77t
        -0x80t
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_4
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x80t
        -0x78t
        -0x78t
        -0x80t
        -0x75t
        -0x7et
        -0x37t
        -0x7at
        -0x77t
        -0x7dt
        -0x6bt
        -0x78t
        -0x72t
        -0x7dt
        -0x37t
        -0x80t
        -0x6ct
        -0x7ft
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    nop

    .line 127
    :array_5
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x80t
        -0x78t
        -0x78t
        -0x80t
        -0x75t
        -0x7et
        -0x37t
        -0x7at
        -0x77t
        -0x7dt
        -0x6bt
        -0x78t
        -0x72t
        -0x7dt
        -0x37t
        -0x7at
        -0x6ct
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    nop

    .line 143
    :array_6
    .array-data 1
        -0x7ct
        -0x78t
        -0x76t
        -0x37t
        -0x80t
        -0x78t
        -0x78t
        -0x80t
        -0x75t
        -0x7et
        -0x37t
        -0x7at
        -0x77t
        -0x7dt
        -0x6bt
        -0x78t
        -0x72t
        -0x7dt
        -0x37t
        -0x7at
        -0x6ct
        -0x37t
        -0x78t
        -0x6ct
        -0x6ct
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/turbo/live/service/SecureService;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/turbo/live/service/SecureService;->b:Ljava/lang/Thread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/turbo/live/service/SecureService;->b:Ljava/lang/Thread;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/turbo/live/service/SecureService;->a:Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object v0, p0, Lcom/turbo/live/service/SecureService;->a:Landroid/os/ParcelFileDescriptor;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final b([B)Ljava/lang/String;
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget-byte v3, p1, v2

    .line 8
    .line 9
    iget v4, p0, Lcom/turbo/live/service/SecureService;->d:I

    .line 10
    .line 11
    xor-int/2addr v3, v4

    .line 12
    int-to-byte v3, v3

    .line 13
    aput-byte v3, v1, v2

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 19
    .line 20
    sget-object p1, Lz8;->a:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-direct {p0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/turbo/live/service/SecureService;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onRevoke()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/turbo/live/service/SecureService;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/net/VpnService;->onRevoke()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string p2, "STOP"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lnm;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/turbo/live/service/SecureService;->a()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    return p0

    .line 22
    :cond_1
    iget-boolean p1, p0, Lcom/turbo/live/service/SecureService;->c:Z

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    :try_start_0
    new-instance p1, Landroid/net/VpnService$Builder;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 31
    .line 32
    .line 33
    iget-object p3, p0, Lcom/turbo/live/service/SecureService;->e:[B

    .line 34
    .line 35
    invoke-virtual {p0, p3}, Lcom/turbo/live/service/SecureService;->b([B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const/16 v0, 0x20

    .line 40
    .line 41
    invoke-virtual {p1, p3, v0}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p3, p0, Lcom/turbo/live/service/SecureService;->f:[B

    .line 46
    .line 47
    invoke-virtual {p0, p3}, Lcom/turbo/live/service/SecureService;->b([B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, v0}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/16 p3, 0x5dc

    .line 57
    .line 58
    invoke-virtual {p1, p3}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Landroid/net/VpnService$Builder;->setBlocking(Z)Landroid/net/VpnService$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    iget-object v1, p0, Lcom/turbo/live/service/SecureService;->g:[[B

    .line 74
    .line 75
    array-length v2, v1

    .line 76
    move v3, v0

    .line 77
    :goto_1
    if-ge v3, v2, :cond_3

    .line 78
    .line 79
    aget-object v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    .line 81
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/turbo/live/service/SecureService;->b([B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {p3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v4}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    .line 95
    :catch_0
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/turbo/live/service/SecureService;->a:Landroid/os/ParcelFileDescriptor;

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    iput-boolean p2, p0, Lcom/turbo/live/service/SecureService;->c:Z

    .line 107
    .line 108
    new-instance p1, Ljava/lang/Thread;

    .line 109
    .line 110
    new-instance p3, Lr1;

    .line 111
    .line 112
    const/16 v0, 0x8

    .line 113
    .line 114
    invoke-direct {p3, v0, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    const-string v0, "vpn"

    .line 118
    .line 119
    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lcom/turbo/live/service/SecureService;->b:Ljava/lang/Thread;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 125
    .line 126
    .line 127
    :catch_1
    :cond_4
    :goto_2
    return p2
.end method
