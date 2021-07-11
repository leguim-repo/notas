# Virtual Box

## Access shared folder in an Kali VM
```code
sudo usermod -a -G vboxsf `yourusername`
sudo chown -R `yourusername`:users /<sharedfoldername>/
```
When adding a user to a group has an effect only after the next login of the user. You need Logout/Login to access a shared folder.
