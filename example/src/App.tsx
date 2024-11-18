import { StyleSheet, View } from 'react-native';
import Counter from 'react-native-raect-native-counter-using-fabric';

export default function App() {
  return (
    <View style={styles.container}>
      <Counter />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
