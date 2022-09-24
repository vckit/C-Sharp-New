using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace InventoryApp.HelperClass
{
    internal class WorkPassword
    {
        public bool GetPassword(string password)
        {
            bool isdigit = false;
            bool isletter = false;
            bool isupper = false;
            bool isspcial = false;

            try
            {
                foreach (var item in password)
                {
                    if (char.IsDigit(item))
                    {
                        isdigit = true;
                        break;
                    }
                }

                foreach (var item in password)
                {
                    if (char.IsUpper(item))
                    {
                        isupper = true;
                        break;
                    }
                }

                foreach (var item in password)
                {
                    if (char.IsLetter(item))
                    {
                        isletter = true;
                        break;
                    }
                }

                foreach (var item in password)
                {
                    if (item == '!' || item == '@' || item == '#' && item == '%')
                    {
                        isspcial = true;
                        break;
                    }
                }

                if (password.Length > 8 && isletter && isdigit && isupper && isspcial)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }

        public string Encrypt(string decrypted)
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


        public string Decrypt(string encrypted)
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
