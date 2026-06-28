package defpackage;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileTime;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dm2 extends dx1 {
    public static Long Y(FileTime fileTime) {
        long millis = fileTime.toMillis();
        Long lValueOf = Long.valueOf(millis);
        if (millis != 0) {
            return lValueOf;
        }
        return null;
    }

    @Override // defpackage.dx1, defpackage.r51
    public final i51 L(bt2 bt2Var) {
        bt2 bt2VarK;
        bt2Var.getClass();
        Path path = Paths.get(bt2Var.n.q(), new String[0]);
        path.getClass();
        try {
            BasicFileAttributes attributes = Files.readAttributes(path, (Class<BasicFileAttributes>) BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            Path symbolicLink = attributes.isSymbolicLink() ? Files.readSymbolicLink(path) : null;
            boolean zIsRegularFile = attributes.isRegularFile();
            boolean zIsDirectory = attributes.isDirectory();
            if (symbolicLink != null) {
                String str = bt2.o;
                bt2VarK = qz0.k(symbolicLink.toString());
            } else {
                bt2VarK = null;
            }
            Long lValueOf = Long.valueOf(attributes.size());
            FileTime fileTimeCreationTime = attributes.creationTime();
            Long lY = fileTimeCreationTime != null ? Y(fileTimeCreationTime) : null;
            FileTime fileTimeLastModifiedTime = attributes.lastModifiedTime();
            Long lY2 = fileTimeLastModifiedTime != null ? Y(fileTimeLastModifiedTime) : null;
            FileTime fileTimeLastAccessTime = attributes.lastAccessTime();
            return new i51(zIsRegularFile, zIsDirectory, bt2VarK, lValueOf, lY, lY2, fileTimeLastAccessTime != null ? Y(fileTimeLastAccessTime) : null);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }

    @Override // defpackage.dx1, defpackage.r51
    public final void j(bt2 bt2Var, bt2 bt2Var2) throws IOException {
        bt2Var.getClass();
        bt2Var2.getClass();
        try {
            Path path = Paths.get(bt2Var.n.q(), new String[0]);
            path.getClass();
            Path path2 = Paths.get(bt2Var2.n.q(), new String[0]);
            path2.getClass();
            Files.move(path, path2, StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
        } catch (UnsupportedOperationException unused) {
            p61.k("atomic move not supported");
        } catch (NoSuchFileException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override // defpackage.dx1
    public final String toString() {
        return "NioSystemFileSystem";
    }
}
