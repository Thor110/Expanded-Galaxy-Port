using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

public static class BinaryUtility
{
    public static void Replace(BinaryReader reader, BinaryWriter writer, IEnumerable<Tuple<long, byte>> replacements)
    {
        byte[] bytes = new byte[reader.BaseStream.Length];
        reader.BaseStream.Position = 0;
        reader.Read(bytes, 0, bytes.Length);

        foreach (var replacement in replacements)
        {
            bytes[replacement.Item1] = replacement.Item2;
        }

        writer.BaseStream.Position = 0;
        writer.BaseStream.SetLength(0);
        writer.Write(bytes);
    }
}