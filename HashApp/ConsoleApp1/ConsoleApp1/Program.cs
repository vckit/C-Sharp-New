using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter: ");
            string input = Console.ReadLine();
            Console.WriteLine(Encrypt(input));
            Console.WriteLine(Decrypt("HBXsrWE4bNPMRBIbiub7pg=="));
            Console.ReadKey();

        }

        public static string Encrypt(string decrypted)
        {
            string hash = "P@ssw0rd";
            byte[] data = UTF8Encoding.UTF8.GetBytes(decrypted);

            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider();

            tripDes.Key = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
            tripDes.Mode = CipherMode.ECB;

            ICryptoTransform transform = tripDes.CreateEncryptor();
            byte[] result = transform.TransformFinalBlock(data, 0, data.Length);

            return Convert.ToBase64String(result);
        }


        public static string Decrypt(string encrypted)
        {
            string hash = "P@ssw0rd";
            byte[] data = Convert.FromBase64String(encrypted);


            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider();

            tripDes.Key = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
            tripDes.Mode = CipherMode.ECB;

            ICryptoTransform transform = tripDes.CreateDecryptor();
            byte[] result = transform.TransformFinalBlock(data, 0, data.Length);

            return UTF8Encoding.UTF8.GetString(result);
        }
    }
}
