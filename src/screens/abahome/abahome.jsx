import { View, Text, FlatList } from "react-native";
import { styles } from "./abahome.style";
import { doctors } from "../../constants/data";
import Doctor from "../../components/doctor/doctor";
import icon from "../../constants/icon.js";

function AbaHome() {
  return (
    <View style={styles.container}>
      <Text style={styles.text}>Agende os seus serviços médicos</Text>

      <FlatList
        data={doctors}
        keyExtractor={(item) => item.id_doctor.toString()}
        showsVerticalScrollIndicator={false}
        renderItem={({ item }) => {
          return (
            <Doctor name={item.name}
                    icon={item.icon === "M" ? icon.male : icon.female}
                    especialidade={item.specialty}

            />

          );
        }}
      />
    </View>
  );
}


export default AbaHome;

