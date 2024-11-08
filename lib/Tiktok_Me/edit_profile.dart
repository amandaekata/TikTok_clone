import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column( 
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(200)),
                        image: DecorationImage(
                            image: AssetImage('assets/program.jpg'),
                            opacity: 1,
                            fit: BoxFit.fitWidth),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 30,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Change photo')
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(200)),
                          color: Color.fromARGB(255, 212, 211, 211)),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.video_camera_back_outlined,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Change video')
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               const  Text('Name', textAlign: TextAlign.start,
                 style: TextStyle(fontSize: 15),),
                Row(
                  children: [
                   const  Text('Amanda Ekata', textAlign: TextAlign.end,
                     style: TextStyle(fontSize: 15, color: Colors.grey),),
                      const  SizedBox(width: 2,),
                     IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios, size: 12,))
                  ],
                ),
        
              ],
            ),
            const SizedBox(height: 25,),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const   Text('Username', textAlign: TextAlign.start,
                 style: TextStyle(fontSize: 15),),
                Row(
                  children: [
                   const  Text('codeWithAmy', textAlign: TextAlign.end,
                     style: TextStyle(fontSize: 15, color: Colors.grey),),
                    const  SizedBox(width: 2,),
                     IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios,  size: 12))
                  ],
                ),
                  
              ],
            ),
            //const SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const  Text('codeWithAmy', textAlign: TextAlign.end,
        
                         style: TextStyle(fontSize: 13, color: Colors.grey),),
                         const SizedBox(width: 1,),
                         IconButton(onPressed: (){}, icon: const  Icon(Icons.copy, size: 12,)),
                ],
              ),
              const SizedBox(height: 25,),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const   Text('Bio', textAlign: TextAlign.start,
                 style: TextStyle(fontSize: 15),),
                Row(
                  children: [
                   const  Text('Add a bio to your profile', textAlign: TextAlign.end,
                     style: TextStyle(fontSize: 15, color: Colors.grey),),
                    const  SizedBox(width: 2,),
                     IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios,  size: 12))
                  ],
                ),
                  
              ],
            ),
           const   SizedBox(height: 25,),
          const  Divider(),
           const   SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const   Text('Instagram', textAlign: TextAlign.start,
                 style: TextStyle(fontSize: 15),),
                Row(
                  children: [
                   const  Text('Add Instagram to your profile', textAlign: TextAlign.end,
                     style: TextStyle(fontSize: 15, color: Colors.grey),),
                    const  SizedBox(width: 2,),
                     IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios,  size: 12))
                  ],
                ),
                  
              ],
            ),
          const SizedBox(height: 25,),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const   Text('YouTube', textAlign: TextAlign.start,
                 style: TextStyle(fontSize: 15),),
                Row(
                  children: [
                   const  Text('Add YouTube to your profile', textAlign: TextAlign.end,
                     style: TextStyle(fontSize: 15, color: Colors.grey),),
                    const  SizedBox(width: 2,),
                     IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios,  size: 12))
                  ],
                ),
                  
              ],
            ),
          ],
        ),
      ),
    );
  }
}
